import 'package:flutter/material.dart';
import 'package:yomcafe/styles/styles.dart';
import '../../widgets/widgets.dart';
import 'franchisee.dart';

class Home_Item_5 extends StatefulWidget {

  @override
  _Home_Item_5_1State createState() => _Home_Item_5_1State();
}

class _Home_Item_5_1State extends State<Home_Item_5> {

  final List _list = [
    "ÝOM Cafe",
    "배달 기반의 프랜차이즈 카페",
    "가맹점찾기"
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('lib/assets/images/bake.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Container(
            color: Colors.black.withOpacity(0.2),
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
                          alignment: Alignment.center,
                          child:
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [

                              Image.asset(
                                'lib/assets/logos/yom.png',
                                color: Colors.white,
                                fit: BoxFit.fitWidth,
                                width: 85,
                              ),

                              const SizedBox(height: 8,),
                              Text(_list[0], style: buttomTextStyle_1(Colors.white),),

                              const SizedBox(height: 24,),
                              FittedBox(
                                  fit: BoxFit.fill,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 64, right: 64),
                                    child: Text(_list[1], style: buttomTextStyle_2(Colors.white),),
                                  )
                              ),
                              const SizedBox(height: 30,),

                              FittedBox(
                                  fit: BoxFit.fill,
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 64, right: 64),
                                      child: Column(
                                        children: [
                                          Text("주소 : 경기 수원시 팔달구 화양로 17-2, 1층 101호 (화서동)", style: buttomTextStyle_3(Colors.white),),
                                          const SizedBox(height: 10,),
                                          Text("상호 : 욤(Yom)  |  대표 : 신재원  |  사업자등록번호 : 591-25-01153", style: buttomTextStyle_3(Colors.white),),
                                          const SizedBox(height: 10,),
                                          Text("Tel. 1544-1204   |   본사. 031-243-5111   |   dnf9059@naver.com", style: buttomTextStyle_3(Colors.white),),
                                          const SizedBox(height: 30,),
                                          Text("ⓒ2021. 욤(Yom) all copyright reserved", style: buttomTextStyle_3(Colors.white),),
                                        ],
                                      )
                                  )
                              ),


                              const SizedBox(height: 32,),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ))
    );
  }
}