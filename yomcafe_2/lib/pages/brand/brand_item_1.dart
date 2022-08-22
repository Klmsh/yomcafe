import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../main.dart';
import '../../../styles/styles.dart';
import '../../widgets/widgets.dart';

class Brand_Item_1 extends StatefulWidget {

  @override
  _Brand_Item_1_1State createState() => _Brand_Item_1_1State();
}

class _Brand_Item_1_1State extends State<Brand_Item_1> {

  int index = -1;
  double opacity = 1.0;
  bool isStateDone = true;
  List _list_1 = ["01", "02","03"];
  List _list_2 = ["매장에서 커피만\n먹는 시대는 지났습니다", "매장에서 커피만\n먹는 시대는 지났습니다","매장에서 커피만\n먹는 시대는 지났습니다"];
  List _list_3 = [
    '모양이 같을 수는 있어도 맛은 흉내낼수 없습니다'
        +'\n본사에서 엄선하고 개발한 신선한 재료와 다양한 종류의'
        +'\n디저트, 식사대용 메뉴까지 뛰어난 맛과 최고의 가성비를'
        +'\n고로 갖춘 기존의 홀 & 테이크 아웃 2way 영업 방식에'
        +'\n배달의 특수성을 더한 3way 영업 방식으로 소형 매장에서도'
        +'\n높은 매출을 달성 시키고 있습니다.',
    '모양이 같을 수는 있어도 맛은 흉내낼수 없습니다'
        +'\n본사에서 엄선하고 개발한 신선한 재료와 다양한 종류의'
        +'\n디저트, 식사대용 메뉴까지 뛰어난 맛과 최고의 가성비를'
        +'\n고로 갖춘 기존의 홀 & 테이크 아웃 2way 영업 방식에'
        +'\n배달의 특수성을 더한 3way 영업 방식으로 소형 매장에서도'
        +'\n높은 매출을 달성 시키고 있습니다.',
    '모양이 같을 수는 있어도 맛은 흉내낼수 없습니다'
        +'\n본사에서 엄선하고 개발한 신선한 재료와 다양한 종류의'
        +'\n디저트, 식사대용 메뉴까지 뛰어난 맛과 최고의 가성비를'
        +'\n고로 갖춘 기존의 홀 & 테이크 아웃 2way 영업 방식에'
        +'\n배달의 특수성을 더한 3way 영업 방식으로 소형 매장에서도'
        +'\n높은 매출을 달성 시키고 있습니다.',];

  changeOpacity() async {

    if(opacity == 1){
      index++;
      if(index >= 3){
        index = 0;
      }
    }


    await Future.delayed(Duration(milliseconds: 2500), () {

      if(!isStateDone){
        return;
      }

      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        changeOpacity();
      });
    });


  }


  @override
  void initState() {

    super.initState();
    isStateDone = true;
    changeOpacity();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    isStateDone =false;
  }



  @override
  Widget build(BuildContext context) {

    return
      Container(
        height: double.infinity,
        child: MediaQuery.of(context).size.width > 900 ? Stack(
          children: [

             Align(
              alignment: Alignment.topLeft,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 2),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 160, left: 32),
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 0, // space between underline and text
                          ),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.white,  // Text colour here
                                width: 4.0, // Underline width
                              ))
                          ),

                          child:

                          FittedBox(
                            fit: BoxFit.fill,
                            child: Padding(
                                padding: EdgeInsets.only(top: 32),
                                child: Text(_list_1[index], style:TextStyle(color: Colors.white, fontSize: 60 ,letterSpacing:1, fontWeight: FontWeight.bold,))
                            ),
                          ),),

                        FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text(_list_2[index],
                                style: TextStyle(color: Colors.white, fontSize: 40 ,letterSpacing:1, fontWeight: FontWeight.bold,)),
                          ),
                        ),

                        FittedBox(
                          fit: BoxFit.fill,
                          child: Padding(
                            padding: EdgeInsets.only(top: 32),
                            child: Text(_list_3[index],
                                style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 24 ,letterSpacing:2, fontWeight: FontWeight.normal, height: 1.6)),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
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
          ],
        ) : SizedBox.shrink(),
      );
  }


}
