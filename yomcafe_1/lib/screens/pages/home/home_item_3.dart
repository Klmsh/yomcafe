import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../widgets/widgets.dart';
import '../../../main.dart';
import '../../../styles/styles.dart';

class Home_Item_3 extends StatefulWidget {

  @override
  _Home_Item_3_1State createState() => _Home_Item_3_1State();
}

class _Home_Item_3_1State extends State<Home_Item_3> {

  final List _list = [
    "동일업계 최저 창업비용",
    "4600만 원으로 월 4600만 원 이상 매출",
    "소자본 창업으로 높은 매출",
    "자세히보기"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('lib/assets/images/image_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Stack(
            children: [

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width > 1128 ? 1128 : MediaQuery.of(context).size.width,
                  child:

                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Image.asset(
                              'lib/assets/logos/yom.png',
                              fit: BoxFit.fitWidth,
                              width: 85,
                            ),

                            const SizedBox(height: 20,),
                            Text(_list[0], style: textTitleLevel_1(Colors.white),),
                            const SizedBox(height: 24,),
                            Text(_list[1], style: textTitleLevel_2(Colors.white),),
                            const SizedBox(height: 32,),
                            Text(_list[2], style: textTitleLevel_3(Colors.white),),
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
                                    Navigator.pushNamed(context, '/guide');
                                  }
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}