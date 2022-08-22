import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yomcafe/main.dart';
import '../../styles/styles.dart';
class Bottom extends StatefulWidget {

    @override
    _Bottom_1State createState() => _Bottom_1State();
}

class _Bottom_1State extends State<Bottom> {

  bool isMobile = false;
  double defaultPadding = 72;

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1100){
      setState((){
        isMobile = true;
        defaultPadding = 32;
      });
    }
    else{
      setState((){
        isMobile = false;
        defaultPadding = 72;
      });
    }
    return  Container(
        color: const Color(0xff3c3f41),
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Container(
            margin:  EdgeInsets.only(left: defaultPadding, right: defaultPadding),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  children: [
                    Image.asset(
                      'lib/assets/logos/yom.png',
                      fit: BoxFit.fitHeight,
                      width: 40,
                    ),
                    const SizedBox(width: 32,),
                    Padding(padding: EdgeInsets.only(top: 0),
                      child:  Text(
                        "창업문의 1544 - 1204", style: buttomTextStyle_2(Colors.white,),
                      ),),
                  ],
                ),

              ],
            )
        )
    );



  }


}
