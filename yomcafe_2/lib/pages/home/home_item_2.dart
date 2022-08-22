import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../main.dart';
import '../../../styles/styles.dart';
import '../../widgets/widgets.dart';

class Home_Item_2 extends StatefulWidget {

  final VideoPlayerController controller;

  const Home_Item_2({super.key, required this.controller});

  @override
  _Home_Item_2_1State createState() => _Home_Item_2_1State();
}

class _Home_Item_2_1State extends State<Home_Item_2> {

  final List _list = [
    "차별화 된 메뉴",
    "시즌별로 다양한 메뉴를 개발 합니다",
    "신선한 재료로 최고의 커피를 만듭니다.",
    "메뉴소개"

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.play();
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.pause();
  }

  @override
  Widget build(BuildContext context) {

    return
      Stack(
        children: [

          SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  width: widget.controller.value.size.width ?? 0,
                  height: widget.controller.value.size.height ?? 0,
                  child: VideoPlayer(widget.controller),
                ),
              )
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.5),
            child: Align(
              alignment: Alignment.center,
              child:
              MediaQuery.of(context).size.height > 400 ?
              SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width > 980 ? 980 : MediaQuery.of(context).size.width,
                child:

                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(_list[0], style: textTitleLevel_3(Colors.white),),
                      const SizedBox(height: 24,),
                      FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 80, right: 80),
                            child: Text(_list[1], style: textTitleLevel_2(Colors.white),),
                          )
                      ),
                      const SizedBox(height: 24,),
                      FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 150, right: 150),
                            child: Text(_list[2], style: textTitleLevel_1(Colors.white),),
                          )
                      ),

                      const SizedBox(height: 48,),
                      InkWell(
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => {
                        },
                        child:
                        InkWell_BTN(context,

                            Container(
                                width: 200,
                                height: 44,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Text(_list[3], style: textTitleLevel_4(Colors.white),),

                                  ),
                                )
                            ),
                                (){
                              Navigator.pushNamed(context, '/menu');
                            }
                        ),


                      ),



                    ],
                  ),
                ),
              ) : const SizedBox.shrink(),
            ),

          ),




        ],
      );
  }


}
