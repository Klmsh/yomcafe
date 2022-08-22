import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yomcafe/screens/layouts/bottom.dart';
import '../../../styles/styles.dart';
import '../../layouts/fastInquiry.dart';
import '../../layouts/header.dart';
import 'menuGridList.dart';
import 'menu_item_1.dart';

class MenuPage extends StatefulWidget {

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();

}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin{

  List _list = [
    "차별화 된 메뉴",
    "시즌별로 다양한 메뉴를 개발 합니다",
    "신선한 재료로 최고의 커피를 만듭니다.",
  ];

  bool isTopScrolled = false;
  bool isBottomScrolled = false;
  int index = 0;
  bool isJsonData = false;
  double bottomMargin = 0;
  late final ScrollController _scrollController = ScrollController();

  Future<void> setData() async {

    if(listIndexItem.isNotEmpty || listIndexItem != null){

      String jsonString = await rootBundle.loadString('lib/assets/item.json');
      var resultData = jsonDecode(jsonString);

      for(int i = 0; i < imagesData.length; i++){
        List _lst = resultData[i.toString()];
        List<PhotoList> _photos = [];
        for(int j = 0; j < _lst.length; j++){
          var _result = _lst[j];
          _photos.add(PhotoList(imageURL: "lib/assets/menus/"+imagesData[i]+"/"+_result["img"], title: _result["label"]));
        }
        listIndexItem.add(listIndex(index: i, photo: _photos));
      }
      setState((){
        isJsonData = true;
      });
    }

  }

  @override
  void initState() {

    setLayoutMargin();
    super.initState();
  }

  Future<void> setLayoutMargin() async {
    isTopScrolled = false;
    isBottomScrolled = false;
    _scrollController.addListener(() {
      if (_scrollController.offset >= 400) {
        setState(() {
          isTopScrolled = true;
        });
      }
      else {
        setState(() {
          isTopScrolled = false;
        });
      }
      if (_scrollController.position.maxScrollExtent - 153 <=
          _scrollController.offset) {
        setState(() {
          isBottomScrolled = true;
          bottomMargin = 153 + (_scrollController.offset -
              _scrollController.position.maxScrollExtent);
        });
      }
      else {
        setState(() {
          isBottomScrolled = false;
        });
      }
    });

    await setData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
          backgroundColor: Colors.white,
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return  Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _scrollController,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage('lib/assets/images/menu.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 500,
                              color: Colors.black.withOpacity(0.2),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 100,),
                                  Text(_list[0], style: textTitleLevel_3(Colors.white),),
                                  const SizedBox(height: 24,),
                                  FittedBox(
                                      fit: BoxFit.fill,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 16, right: 16),
                                        child: Text(_list[1], style: textTitleLevel_2(Colors.white),),
                                      )
                                  ),
                                  const SizedBox(height: 24,),
                                  Text(_list[2], style: textTitleLevel_1(Colors.white),),
                                  const SizedBox(height: 48,),
                                ],
                              ),
                            ),
                          ),

                          isJsonData ? Menu_Item_1() : Container(),

                          Bottom()
                        ],
                      ),
                    ),

                    Header(isBottom: isTopScrolled,),

                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width > 1100 ? 64 : 16, bottom: isBottomScrolled ? bottomMargin : 0),
                        child: const FastInquiry(isBottom: true,),
                      ),
                    )
                  ],
                );
              }
          ),

      );
  }
}
