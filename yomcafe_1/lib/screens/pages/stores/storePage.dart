import 'package:flutter/material.dart';
import 'package:yomcafe/screens/layouts/bottom.dart';
import 'package:yomcafe/screens/pages/stores/store_item_1.dart';
import '../../../styles/styles.dart';
import '../../layouts/fastInquiry.dart';
import '../../layouts/header.dart';
import '../menu/menu_item_1.dart';

class StorePage extends StatefulWidget {

  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();

}

class _StorePageState extends State<StorePage> with TickerProviderStateMixin{

  List _list = [
    "가맹점 찾기",
    "가맹점 찾기",
    "가맹점 찾기",
  ];

  bool isTopScrolled = false;
  bool isBottomScrolled = false;
  int index = 0;
  double bottomMargin = 0;
  late final ScrollController _scrollController = ScrollController();
  late TabController _tabController;

  @override
  void initState() {

    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    setLayoutMargin();
    super.initState();
  }

  void setLayoutMargin(){
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
                            // image: DecorationImage(
                            //   image: ExactAssetImage('lib/assets/images/menu_img.jpg'),
                            //   fit: BoxFit.cover,
                            // ),
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
                                      child: Text(_list[1], style: textTitleLevel_2(Colors.white),),
                                      padding: EdgeInsets.only(left: 16, right: 16),
                                    )
                                ),
                                const SizedBox(height: 24,),
                                Text(_list[2], style: textTitleLevel_1(Colors.white),),
                                const SizedBox(height: 48,),
                              ],
                            ),
                          ),
                        ),


                        Store_Item_1(),

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
