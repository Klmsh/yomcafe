import 'package:flutter/material.dart';
import 'package:yomcafe/screens/widgets/widgets.dart';
import '../../../styles/styles.dart';
import '../../widgets/hoverButton.dart';
import 'menuGridList.dart';

class Menu_Item_1 extends StatefulWidget {
  const Menu_Item_1({Key? key}) : super(key: key);

  @override
  State<Menu_Item_1> createState() => _Menu_Item_1State();
}

class _Menu_Item_1State extends State<Menu_Item_1> {

  int indexs = 0;
  List _menuIsCliced = [false, false, false, false, false, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    indexs = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 980,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 32, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [

            const SizedBox(height: 28,),
            Text("ÝOM MENU", style: textStyleMenu(blackColor),),
            const SizedBox(height: 32,),

            SizedBox(width: 600 + 64,
            child:Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...menuList_1.map((e) =>
                    InkWell_BTN(context, ButtonHover(result: e, isClicked:_menuIsCliced[menuList_1.indexOf(e)]), (){
                      setState((){
                        for(int i = 0; i < _menuIsCliced.length; i++){
                          _menuIsCliced[i] = false;
                        }
                        indexs = menuList_1.indexOf(e);
                        _menuIsCliced[indexs] = true;
                      });
                    })
                )
              ],
            ),),

            const SizedBox(height: 16,),
            SizedBox(width: 360 + 16,
              child:Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...menuList_2.map((e) =>
                      InkWell_BTN(context, ButtonHover(result: e, isClicked:_menuIsCliced[menuList_2.indexOf(e)+5]), (){
                        setState((){
                          for(int i = 5; i < _menuIsCliced.length; i++){
                            _menuIsCliced[i] = false;
                          }
                          indexs = menuList_2.indexOf(e) + 5;
                          _menuIsCliced[indexs] = true;
                        });
                      })
                  )
                ],
              ),),

            const SizedBox(height: 64,),

            menuGridList(index: indexs,)


          ],
        )
    );
  }
}

