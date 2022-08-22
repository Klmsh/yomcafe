import 'package:flutter/material.dart';
import 'package:yomcafe/screens/layouts/bottom.dart';
import '../../../styles/styles.dart';
import '../../layouts/fastInquiry.dart';
import '../../layouts/header.dart';
import '../menu/menu_item_1.dart';
import 'inquiry_item_1.dart';

class InquiryPage extends StatefulWidget {

  const InquiryPage({Key? key}) : super(key: key);

  @override
  State<InquiryPage> createState() => _InquiryPageState();

}

class _InquiryPageState extends State<InquiryPage> with TickerProviderStateMixin{

  List _list = [
    "동종업계의 경험이 없어도",
    '"욤" 만의 차별화된 교육으로 전문가로 만들어드립니다',
    '배달 기반의 프랜차이즈 카페 "욤"',
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
                            image: DecorationImage(
                              image: ExactAssetImage('lib/assets/images/inquiry.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 500,
                            color: Colors.black.withOpacity(0.4),
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


                        Inquiry_Item_1(),

                        Bottom()
                      ],
                    ),
                  ),

                  Header(isBottom: isTopScrolled,),

                ],
              );
            }
        ),

      );
  }
}
