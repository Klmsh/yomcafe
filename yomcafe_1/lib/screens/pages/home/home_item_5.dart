import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:yomcafe/screens/pages/home/franchisee.dart';
import 'package:yomcafe/styles/styles.dart';
import '../../widgets/widgets.dart';
import '../../layouts/bottom.dart';

class Home_Item_5 extends StatefulWidget {

  @override
  _Home_Item_5_1State createState() => _Home_Item_5_1State();
}

class _Home_Item_5_1State extends State<Home_Item_5> {

  var item_Size = 250.0;

  final List _list = [
    "최근 오픈한 매장",
    "고객의 입맛을 사로잡는 특급메뉴를 제공합니다",
    "가맹점찾기"
  ];

  late List<Franchisee> _franchisee = [];

  @override
  void initState() {
        super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('lib/assets/images/image_3.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
        child:
        Stack(
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
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 32, right: 16),
                        child: InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap:  () {
                            Navigator.pushNamed(context, '/stores');
                          },
                          child:
                          Image.asset(
                            'lib/assets/iconss/more.png',
                            fit: BoxFit.fitWidth,
                            width: 85,
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(_list[0], style: textTitleLevel_2(blackColor),),
                          const SizedBox(height: 8,),
                          Text(_list[1], style: textTitleLevel_1(blackColor),),
                          const SizedBox(height: 16,),

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween,
                            children: [
                              ..._franchisee.map((e) =>
                                  InkWell(
                                      mouseCursor: MaterialStateMouseCursor
                                          .clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () =>
                                      {

                                      },
                                      child: homeListItem(
                                          item_Size, e.userName, e.userImage,
                                          e.userAddress, e.userNumber
                                      )
                                  )
                              )
                            ],
                          ),
                          SizedBox(height: 31,)
                        ],

                      ),

                    ),


                  ],
                ),
              ),
            ),

            Align(
                alignment: Alignment.bottomCenter,
                child: Bottom()
            )
          ],
        )
    );
  }
}

