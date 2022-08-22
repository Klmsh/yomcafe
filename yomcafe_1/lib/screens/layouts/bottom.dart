import 'package:flutter/material.dart';
import '../../styles/styles.dart';

class Bottom extends StatefulWidget {
  @override
  _Bottom_1State createState() => _Bottom_1State();
}

class _Bottom_1State extends State<Bottom> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: MediaQuery.of(context).size.width,
        height: 153,
        color: blackColor,
        child: Container(
            margin: const EdgeInsets.only(left: 72, right: 72, top: 20, bottom: 13),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ÝOM Cafe", style: headerMenuTextStyle(Colors.white),
                        ),

                        const SizedBox(height: 32,),

                        Text("Tel. 1544-1204   |   본점. 031-243-5111", style: bottomSmallTextStyle(),),

                        const SizedBox(height: 16,),

                        Text("dnf9059@naver.com", style: bottomSmallTextStyle(),)

                      ],
                    ),

                    const SizedBox(width: 128,),

                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("이용약관  |  ", style: bottomSmallTextStyle(),),
                              Text("개인정보처리방침", style: bottomSmallTextStyle(),),
                            ],
                          ),

                          const SizedBox(height: 13,),

                          Text("상호 : 욤(Yom)  |  대표 : 신재원  |  사업자등록번호 : 591-25-01153", style: bottomSmallTextStyle()),

                          const SizedBox(height: 13,),

                          Text("주소 : 경기 수원시 팔달구 화양로 17-2, 1층 101호 (화서동)", style: bottomSmallTextStyle(),),

                          const SizedBox(height: 16,),




                        ],
                      ),
                    )
                  ],
                ),

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     InkWell(
                //       mouseCursor: MaterialStateMouseCursor.clickable,
                //       hoverColor: Colors.transparent,
                //       splashColor: Colors.transparent,
                //       highlightColor: Colors.transparent,
                //       onTap: () => {
                //
                //       },
                //       child: Image.asset(
                //         'lib/assets/iconss/instagram.png',
                //         fit: BoxFit.contain,
                //         width: 26,
                //         height: 26,
                //       ),
                //     ),
                //
                //     const SizedBox(height: 16,),
                //
                //     InkWell(
                //       mouseCursor: MaterialStateMouseCursor.clickable,
                //       hoverColor: Colors.transparent,
                //       splashColor: Colors.transparent,
                //       highlightColor: Colors.transparent,
                //       onTap: () => {
                //
                //       },
                //       child: Image.asset(
                //         'lib/assets/iconss/facebook.png',
                //         fit: BoxFit.contain,
                //         width: 26,
                //         height: 26,
                //       ),
                //     ),
                //
                //
                //   ],
                // ),

              ],
            )
        )
    );
  }
}
