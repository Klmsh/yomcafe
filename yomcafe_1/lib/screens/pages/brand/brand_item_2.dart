import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yomcafe/styles/styles.dart';

import 'GoogleMap.dart';

class Brand_Item_2 extends StatefulWidget {
  const Brand_Item_2({Key? key}) : super(key: key);

  @override
  State<Brand_Item_2> createState() => _Brand_Item_2State();
}

class _Brand_Item_2State extends State<Brand_Item_2> {


  final Uri naverURL = Uri.parse('https://map.naver.com/v5/search/%EC%9A%A4%EC%B9%B4%ED%8E%98/place/1784520121?c=14136406.9635645,4478201.2576987,15,0,0,0,dh&placePath=%3Fentry%253Dbmp');
  final Uri kakaoURL = Uri.parse('https://map.kakao.com/link/map/174997084');

  void _launchUrl(_url) async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 980,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 32, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      height: 60,
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
                    height: 60,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Text("????????????", style: textTitleLevel_3(blackColor),),
            const SizedBox(height: 16,),
            Text("?????? ????????? ????????? ????????? 17-2, 1??? 101???(?????????)", style: textTitleLevel_3(blackColor),),


            Container(
              margin: EdgeInsets.only(top: 64),
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 16/9,
                child: GoogleMap(),
              ),
            ),


          ],
        )
    );
  }
}
