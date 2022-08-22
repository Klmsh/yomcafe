import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import '../../../main.dart';
import '../../../styles/styles.dart';
import '../../widgets/widgets.dart';
import 'GoogleMap.dart';

class Brand_Item_2 extends StatefulWidget {

  @override
  _Brand_Item_2_1State createState() => _Brand_Item_2_1State();
}

class _Brand_Item_2_1State extends State<Brand_Item_2> {

  final Uri naverURL = Uri.parse('https://map.naver.com/v5/search/%EC%9A%A4%EC%B9%B4%ED%8E%98/place/1784520121?c=14136406.9635645,4478201.2576987,15,0,0,0,dh&placePath=%3Fentry%253Dbmp');
  final Uri kakaoURL = Uri.parse('https://map.kakao.com/link/map/174997084');

  void _launchUrl(_url) async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {

    return
      MediaQuery.of(context).size.width > 860 ? Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width < 1400 ? 32 : 64, bottom: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 64,),

              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  InkWell(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => {
                      _launchUrl(kakaoURL)
                    },
                    child: Image.asset(
                      'lib/assets/images/kakaoMap.png',
                      fit: BoxFit.fitHeight,
                      height: MediaQuery.of(context).size.width > 920 ? 60 : 40,
                    ),
                  ),


                  const SizedBox(width: 40,),

                  InkWell(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => {
                      _launchUrl(naverURL)
                    },
                    child: Image.asset(
                      'lib/assets/images/naverMap.png',
                      fit: BoxFit.fitHeight,
                      height: MediaQuery.of(context).size.width > 920 ? 60 : 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32,),
              Text("화서본점", style: textTitleLevel_3(Colors.white),),
              const SizedBox(height: 16,),

              FittedBox(
                fit: BoxFit.fill,
                child: Padding(
                  padding: EdgeInsets.only(top: 32, left: 32, right: 32),
                  child: Text("경기 수원시 팔달구 화양로 17-2, 1층 101호(화서동)", style: textTitleLevel_3(Colors.white),),
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 64, left: 32, right: 32),
                width: 980,
                child: AspectRatio(
                  aspectRatio: 7/3,
                  child: GoogleMap(),
                ),
              ),


            ],
          )
      ) : SizedBox.shrink();
  }


}
