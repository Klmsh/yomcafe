import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../main.dart';
import '../../../styles/styles.dart';
import '../../widgets/widgets.dart';

class Home_Item_1 extends StatefulWidget {

  final VideoPlayerController controller;

  const Home_Item_1({super.key, required this.controller});

  @override
  _Home_Item_1_1State createState() => _Home_Item_1_1State();
}

class _Home_Item_1_1State extends State<Home_Item_1> {

  final List _list = [
    "ÝOM Cafe",
    '소형 매장에서도 높은 매출을 창출할 수 있는',
    '배달 기반의 프랜차이즈 카페 "욤"',
    "브랜드스토리",
    "가맹문의"
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
                fit: BoxFit.cover,
                child: SizedBox(
                  width: widget.controller.value.size.width ?? 0.0,
                  height: widget.controller.value.size.height ?? 0.0,
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
              MediaQuery.of(context).size.height > 500 ? Container(
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
                          child: Text(_list[1], style: textTitleLevel_2(Colors.white),),
                          padding: EdgeInsets.only(left: 16, right: 16),
                        )
                      ),
                      const SizedBox(height: 24,),
                      Text(_list[2], style: textTitleLevel_1(Colors.white),),
                      const SizedBox(height: 48,),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                                  Navigator.pushNamed(context, '/brand');
                                }
                            ),


                          ),



                          const SizedBox(width: 16,),
                          InkWell(
                            mouseCursor: MaterialStateMouseCursor.clickable,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () => {
                            },
                            child: InkWell_BTN(context,

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
                                        child: Text(_list[4], style: textTitleLevel_4(Colors.white),),

                                      ),
                                    )
                                ),
                                    (){
                                  Navigator.pushNamed(context, '/inquiry');
                                }
                            ),


                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ) : const SizedBox.shrink(),
            ),

          ),

          Positioned.fill(child:
          Align(
              alignment: Alignment.bottomCenter,
              child:  Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: InkWell(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => {

                    },
                    child:Text("▼SCROLLDOWN▼", style: textTitleLevel_5(Colors.white))),
              )
          )),
          //
        ],
      );
  }


}
