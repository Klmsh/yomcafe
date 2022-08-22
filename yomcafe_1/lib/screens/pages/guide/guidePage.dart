import 'package:flutter/material.dart';
import '../../../styles/styles.dart';
import '../../layouts/bottom.dart';
import '../../layouts/fastInquiry.dart';
import '../../layouts/header.dart';
import 'guide_item_1.dart';
import 'guide_item_2.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> with TickerProviderStateMixin{

  List _list = [
    "동일업계 최저 창업비용",
    "4600만 원으로 월 4600만 원 이상 매출",
    "소자본 창업으로 높은 매출",
  ];

  bool isTopScrolled = false;
  bool isBottomScrolled = false;
  int index = 0;
  double bottomMargin = 0;
  late TabController _tabController;
  late final ScrollController _scrollController = ScrollController();

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
                            image: DecorationImage(
                              image: ExactAssetImage('lib/assets/images/guide.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            color: Colors.black.withOpacity(0.1),
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

                        Container(
                          width: 800,
                          margin: EdgeInsets.only(top: 64),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: TabBar(

                            onTap: (e){
                              setState((){
                                index = e;
                                setLayoutMargin();
                              });
                            },
                            tabs: [
                              Container(
                                height: 44,
                                alignment: Alignment.center,
                                child: const Text(
                                  '창업안내',
                                ),
                              ),
                              Container(
                                height: 44,
                                alignment: Alignment.center,
                                child: const Text(
                                  '평점/리뷰',
                                ),
                              ),
                            ],
                            labelStyle: textItem_1(Colors.black87),
                            indicator:  BoxDecoration(
                              gradient: LinearGradient(  //배경 그라데이션 적용
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  blackColor,
                                  blackColor.withOpacity(0.6)
                                ],
                              ),
                            ),

                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            controller: _tabController,
                          ),
                        ),

                        index == 0 ? const Guide_Item_1() :  const Guide_Item_2(),


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
