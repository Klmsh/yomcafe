import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yomcafe/main.dart';
import '../../styles/styles.dart';
class Navigation extends StatefulWidget {

    @override
    _Navigation_1State createState() => _Navigation_1State();
}

class _Navigation_1State extends State<Navigation> {

  bool isTable = false;
  bool isMobile = false;
  double defaultPadding = 72;

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1100){
      setState((){
        isTable = true;
        defaultPadding = 32;
      });
    }
    else{
      setState((){
        isTable = false;
        defaultPadding = 72;
      });
    }

    if(MediaQuery.of(context).size.width < 860){
      isMobile = true;
    }
    else{
      isMobile = false;
    }

    return  Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Container(
            margin:  EdgeInsets.only(left: defaultPadding, right: defaultPadding),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                SizedBox(
                  width: 170,
                  child: InkWell(
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Row(
                        children: [
                          Text(
                            "ÝOM", style: headerMenuTextStyle(Colors.white,),
                          ),
                          const SizedBox(width: 16,),
                          Image.asset(
                            'lib/assets/logos/yom.png',
                            fit: BoxFit.fitHeight,
                            width: 44,
                          ),
                        ],
                      )
                  ),
                ),

                !isMobile ? SizedBox(
                  width: !isTable ? 600 : 450,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, '/brand');
                          },
                          child: Text(
                            "회사 소개", style: headerSmallMenuTextStyle(Colors.white,),
                          )
                      ),

                      InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                          child: Text(
                            "메뉴 소개", style: headerSmallMenuTextStyle(Colors.white,),
                          )
                      ),

                      InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, '/guide');
                          },
                          child: Text(
                            "창업 안내", style: headerSmallMenuTextStyle(Colors.white,),
                          )
                      ),

                      InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, '/inquiry');
                          },
                          child: Text(
                            "가맹 문의", style: headerSmallMenuTextStyle(Colors.white,),
                          )
                      ),

                      InkWell(
                          mouseCursor: MaterialStateMouseCursor.clickable,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.pushNamed(context, '/stores');
                          },
                          child: Text(
                            "가맹점 찾기", style: headerSmallMenuTextStyle(Colors.white,),
                          )
                      ),
                    ],
                  ),
                ) : SizedBox.shrink(),

                SizedBox(
                  width: 170,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        mouseCursor: MaterialStateMouseCursor.clickable,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => {

                        },
                        child: Image.asset(
                          'lib/assets/iconss/hamburger.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.contain,
                          color: Colors.white,
                        )
                    ),
                  ),
                ),


              ],
            )
        )
    );



  }


}
