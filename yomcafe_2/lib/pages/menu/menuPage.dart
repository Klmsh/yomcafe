import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../styles/styles.dart';
import '../../layouts/header.dart';
import 'menuGridList.dart';
import 'menu_item_1.dart';

class MenuPage extends StatefulWidget {

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();

}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin{

  bool indexBool = false;
  bool isDrawable = false;
  bool ischecked = false;
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  bool isTable = false;
  bool isMobile = false;
  double defaultPadding = 72;
  bool headerGone = false;
  int pageIndex = 0;
  final double _minPageHeight = 600;


  bool isJsonData = false;
  bool pageIsScrolling = false;

  int index = 0;

  late final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    setLayoutMargin();
    super.initState();
  }

  Future<void> setLayoutMargin() async {

    await setData();
  }


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
  Widget build(BuildContext context) {

    if(MediaQuery.of(context).size.width < 1400){
      headerGone = true;
    }
    else{
      headerGone = false;
    }

    if(MediaQuery.of(context).size.width < 1100){
      setState((){
        isTable = true;
        defaultPadding = 32;
      });
    }
    else{
      setState((){
        isTable = false;
        defaultPadding = 32;
      });
    }

    if(MediaQuery.of(context).size.width < 860){
      isMobile = true;
    }
    else{
      isMobile = false;
    }

    return
      Scaffold(
        backgroundColor: blackColor,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {

              return isJsonData ? Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('lib/assets/images/background_menu_1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                  Row(
                    children: [
                      Expanded(child:
                      Container(
                        color: Colors.black.withOpacity(0.4),
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              color: headerGone ? Colors.black87 : Colors.transparent,
                              padding: const EdgeInsets.only(left: 32, right: 32),
                              width: 202,
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
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

                                  SizedBox(height: 64,),

                                  headerGone ?  InkWell(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        Navigator.pushNamed(context, '/brand');
                                      },
                                      child: Text(
                                        "회사 소개", style: headerSmallMenuTextStyle2(Colors.white,),
                                      )
                                  ) : SizedBox.shrink(),

                                  SizedBox(height: 64,),

                                  headerGone ?  InkWell(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        Navigator.pushNamed(context, '/menu');
                                      },
                                      child: Text(
                                        "메뉴 소개", style: headerSmallMenuTextStyle2(Colors.white,),
                                      )
                                  ) : SizedBox.shrink(),


                                  SizedBox(height: 64,),

                                  headerGone ?  InkWell(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        Navigator.pushNamed(context, '/guide');
                                      },
                                      child: Text(
                                        "창업 안내", style: headerSmallMenuTextStyle2(Colors.white,),
                                      )
                                  ) : SizedBox.shrink(),


                                  SizedBox(height: 64,),

                                  headerGone ?  InkWell(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        Navigator.pushNamed(context, '/inquiry');
                                      },
                                      child: Text(
                                        "가맹 문의", style: headerSmallMenuTextStyle2(Colors.white,),
                                      )
                                  ) : SizedBox.shrink(),


                                  SizedBox(height: 64,),

                                  headerGone ?  InkWell(
                                      mouseCursor: MaterialStateMouseCursor.clickable,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        Navigator.pushNamed(context, '/stores');
                                      },
                                      child: Text(
                                        "가맹점 찾기", style: headerSmallMenuTextStyle2(Colors.white,),
                                      )
                                  ) : SizedBox.shrink(),


                                ],
                              ),

                            ),

                            Expanded(child:
                            Stack(
                              children: [

                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 64, right: 64, top: !headerGone ? 100 : 0),

                                    child: const SingleChildScrollView(
                                      child: Menu_Item_1(),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    margin:  EdgeInsets.only(left: 170,right: 170),
                                    height: 100,
                                    child:

                                    !headerGone ? !isMobile ? Container(
                                      width: !isTable ? 600 : 450,
                                      child:
                                      Row(
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
                                    ) : const SizedBox.shrink() : const SizedBox.shrink(),
                                  ),
                                ),
                              ],
                            )

                            )

                          ],
                        ),
                      )
                      ),
                      Container(
                        width: !isDrawable ? 298 : 85,
                        color: Colors.black87,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 32),
                                  height: 100,
                                  width: 170,
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                        mouseCursor: MaterialStateMouseCursor.clickable,
                                        hoverColor: Colors.transparent,
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () => {
                                          setState((){
                                            if(isDrawable)  {
                                              isDrawable = false;
                                            }
                                            else{
                                              isDrawable = true;
                                            }
                                          }),
                                        },
                                        child:
                                        !isDrawable ? Image.asset(
                                          'lib/assets/iconss/cancel.png',
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.contain,
                                          color: Colors.white,
                                        ) : Image.asset(
                                          'lib/assets/iconss/hamburger.png',
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.contain,
                                          color: Colors.white,
                                        )
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 32,),

                                !isDrawable ? Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("창업상담문의", style: textFastInquiry(Colors.white),),
                                          const SizedBox(height: 4,),
                                          Text("1544-1204", style: textFastInquiry_2(Colors.white),),
                                          const SizedBox(height: 4,),
                                          Text("창업 전문가가 하나부터 차근차근\n상담해드립니다.", style: textFastInquiry_3(Colors.white), maxLines: 2,),
                                          const SizedBox(height: 16,),
                                          Container(
                                            margin: EdgeInsets.only(right: 32),
                                            width: double.infinity,
                                            height: 44,
                                            child: TextField(
                                                controller: nameController,
                                                cursorColor: blackColor,
                                                keyboardType: TextInputType.name,
                                                decoration: const InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                                    borderSide: BorderSide(width: 1,color: blackColor),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                                    borderSide: BorderSide(width: 1,color: Colors.grey),
                                                  ),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                                      borderSide: BorderSide(width: 1,)
                                                  ),
                                                  labelText: '성함',
                                                )
                                            ),
                                          ),

                                          const SizedBox(height: 16,),

                                          Container(
                                            margin: const EdgeInsets.only(right: 32),
                                            width: double.infinity,
                                            height: 44,
                                            child: TextField(
                                                controller: numberController,
                                                cursorColor: blackColor,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: <TextInputFormatter>[
                                                  FilteringTextInputFormatter.digitsOnly
                                                ], // Only numbers can be entered
                                                decoration: const InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                                    borderSide: BorderSide(width: 1,color: blackColor),
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                                    borderSide: BorderSide(width: 1,color: Colors.grey),
                                                  ),
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                                      borderSide: BorderSide(width: 1,)
                                                  ),
                                                  labelText: '연락처',
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                ) : const SizedBox.shrink(),

                                const SizedBox(height: 10,),

                                !isDrawable ? Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 10,),
                                    Checkbox(
                                        activeColor: Colors.grey,
                                        side: const BorderSide(
                                            color: Colors.white, width: 1
                                        ),
                                        checkColor: Colors.white,
                                        value:ischecked ,
                                        onChanged: (value) {
                                          setState((){
                                            if(ischecked){
                                              ischecked = false;
                                            }
                                            else{
                                              ischecked = true;
                                            }

                                          });
                                        }),
                                    const Text('개인정보처리방침 동의', style: TextStyle(color: Colors.white),),
                                    const Text("*", style: TextStyle(color: Colors.red),)
                                  ],
                                ) : const SizedBox.shrink(),

                                !isDrawable ? Container(
                                    margin: const EdgeInsets.only(left: 16, right: 32, top: 20),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, //
                                          color: Colors.white//        <--- border width here
                                      ),
                                    ),

                                    width: double.infinity,
                                    height: 100,
                                    child: const Padding(
                                        padding: EdgeInsets.all(8),
                                        child:  Text(
                                          "본 약관은.....\n본 약관은.....\n본 약관은.....\n본 약관은....", style: TextStyle(color: Colors.white),
                                        )
                                    )
                                ) : const SizedBox.shrink(),

                                const SizedBox(height: 20,),

                                !isDrawable ? Container(
                                  width: double.infinity,
                                  height: 44,
                                  margin: const EdgeInsets.only(left: 16,right: 32),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: Center(
                                    child: Text("무료상담 신청하기", style: textFastInquiry_4(Colors.white),),
                                  ),
                                ) : const SizedBox.shrink(),

                              ],
                            ),


                            !isDrawable ? MediaQuery.of(context).size.height > 700 ? Padding(padding: const EdgeInsets.only(bottom: 32),child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("ⓒ2021. 욤(Yom) all copyright reserved", style: bottomSmallTextStyle(),),
                            ),) : SizedBox.shrink() : SizedBox.shrink()

                          ],
                        ),
                      )
                    ],
                  )


              ) : const SizedBox.shrink();



            }
        ),

      );
  }
}


// List _list = [
  //   "차별화 된 메뉴",
  //   "시즌별로 다양한 메뉴를 개발 합니다",
  //   "신선한 재료로 최고의 커피를 만듭니다.",
  // ];
  //
  // bool isTopScrolled = false;
  // bool isBottomScrolled = false;
  // int index = 0;
  // bool isJsonData = false;
  // double bottomMargin = 0;
  // late final ScrollController _scrollController = ScrollController();
  //
  // Future<void> setData() async {
  //
  //   if(listIndexItem.isNotEmpty || listIndexItem != null){
  //
  //     String jsonString = await rootBundle.loadString('lib/assets/item.json');
  //     var resultData = jsonDecode(jsonString);
  //
  //     for(int i = 0; i < imagesData.length; i++){
  //       List _lst = resultData[i.toString()];
  //       List<PhotoList> _photos = [];
  //       for(int j = 0; j < _lst.length; j++){
  //         var _result = _lst[j];
  //         _photos.add(PhotoList(imageURL: "lib/assets/menus/"+imagesData[i]+"/"+_result["img"], title: _result["label"]));
  //       }
  //       listIndexItem.add(listIndex(index: i, photo: _photos));
  //     }
  //     setState((){
  //       isJsonData = true;
  //     });
  //   }
  //
  // }
  //
  // @override
  // void initState() {
  //
  //   setLayoutMargin();
  //   super.initState();
  // }
  //
  // Future<void> setLayoutMargin() async {
  //   isTopScrolled = false;
  //   isBottomScrolled = false;
  //   _scrollController.addListener(() {
  //     if (_scrollController.offset >= 400) {
  //       setState(() {
  //         isTopScrolled = true;
  //       });
  //     }
  //     else {
  //       setState(() {
  //         isTopScrolled = false;
  //       });
  //     }
  //     if (_scrollController.position.maxScrollExtent - 153 <=
  //         _scrollController.offset) {
  //       setState(() {
  //         isBottomScrolled = true;
  //         bottomMargin = 153 + (_scrollController.offset -
  //             _scrollController.position.maxScrollExtent);
  //       });
  //     }
  //     else {
  //       setState(() {
  //         isBottomScrolled = false;
  //       });
  //     }
  //   });
  //
  //   await setData();
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //
  //   return
  //     Scaffold(
  //         backgroundColor: Colors.white,
  //         body: LayoutBuilder(
  //             builder: (BuildContext context, BoxConstraints constraints) {
  //               return  Stack(
  //                 children: [
  //                   SingleChildScrollView(
  //                     controller: _scrollController,
  //                     child: Column(
  //                       children: [
  //                         Container(
  //                           width: MediaQuery.of(context).size.width,
  //                           height: 500,
  //                           decoration: const BoxDecoration(
  //                             image: DecorationImage(
  //                               image: ExactAssetImage('lib/assets/images/menu.jpg'),
  //                               fit: BoxFit.cover,
  //                             ),
  //                           ),
  //                           child: Container(
  //                             width: MediaQuery.of(context).size.width,
  //                             height: 500,
  //                             color: Colors.black.withOpacity(0.2),
  //                             alignment: Alignment.center,
  //                             child: Column(
  //                               mainAxisSize: MainAxisSize.min,
  //                               children: [
  //                                 const SizedBox(height: 100,),
  //                                 Text(_list[0], style: textTitleLevel_3(Colors.white),),
  //                                 const SizedBox(height: 24,),
  //                                 FittedBox(
  //                                     fit: BoxFit.fill,
  //                                     child: Padding(
  //                                       padding: const EdgeInsets.only(left: 16, right: 16),
  //                                       child: Text(_list[1], style: textTitleLevel_2(Colors.white),),
  //                                     )
  //                                 ),
  //                                 const SizedBox(height: 24,),
  //                                 Text(_list[2], style: textTitleLevel_1(Colors.white),),
  //                                 const SizedBox(height: 48,),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //
  //                         isJsonData ? Menu_Item_1() : Container(),
  //
  //
  //                       ],
  //                     ),
  //                   ),
  //
  //
  //
  //                 ],
  //               );
  //             }
  //         ),
  //
  //     );
  // }

