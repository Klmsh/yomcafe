import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:yomcafe/screens/pages/home/franchisee.dart';
import 'package:yomcafe/styles/styles.dart';
import '../../widgets/widgets.dart';
import '../../layouts/bottom.dart';

class Home_Item_4 extends StatefulWidget {

  @override
  _Home_Item_4_1State createState() => _Home_Item_4_1State();
}

class _Home_Item_4_1State extends State<Home_Item_4> {

  var item_Size = 250.0;

  final List _list = [
    "최근 오픈한 매장",
    "고객의 입맛을 사로잡는 특급메뉴를 제공합니다",
    "가맹점찾기"
  ];

  late List<Franchisee> _franchisee = [];

  @override
  void initState() {
    _franchisee.add(
        Franchisee(
            "천안두정점", "lib/assets/franchisee/fran_1.png",
            "경기도 천안시 두정동 1464번지 아크로템 1층", "010-6500-2731")
    );

    _franchisee.add(
        Franchisee(
            "영통점", "lib/assets/franchisee/fran_2.png",
            "경기도 수원시 영통구 매영로345번길 7, 1", "031-204-5505")
    );

    _franchisee.add(
        Franchisee(
            "동탄역점", "lib/assets/franchisee/fran_3.png",
            "경기도 화성시 동부대로 1062, 1층", "031-374-0502")
    );

    _franchisee.add(
        Franchisee(
            "오산 권동점", "lib/assets/franchisee/fran_4.png",
            "경기도 오산 퀄리사로 26", "031-377-8719")
    );

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

