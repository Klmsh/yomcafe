import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yomcafe/pages/stores/store_item_1.dart';
import '../../../styles/styles.dart';
import '../../layouts/header.dart';

class StorePage extends StatefulWidget {

  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();

}

class _StorePageState extends State<StorePage> with TickerProviderStateMixin{

  bool indexBool = false;
  bool isDrawable = false;
  bool ischecked = false;
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  PageController _pageController = PageController();

  bool isTable = false;
  bool isMobile = false;
  double defaultPadding = 72;
  bool headerGone = false;
  int pageIndex = 0;
  final double _minPageHeight = 600;



  bool pageIsScrolling = false;

  List<Widget> _list = [];


  void _onScroll(double offset) {
    if (pageIsScrolling == false) {
      pageIsScrolling = true;

      if (offset > 0) {

        if(pageIndex == _list.length - 1){
          pageIsScrolling = false;
          return;
        }

        _pageController
            .nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut)
            .then((value) =>
        {
          //counter.value = _pageController.page as int,
          setState((){
            pageIndex++;
            pageIsScrolling = false;
          })
        }
        );

      } else {

        if(pageIndex <= 0){
          pageIsScrolling = false;
          return;
        }

        _pageController
            .previousPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut)
            .then((value) => {

          setState((){
            pageIndex--;
            pageIsScrolling = false;
          })

        });
      }
    }
  }


  PageView _pageView() {
    return PageView.builder(
      pageSnapping: false,
      scrollDirection: Axis.vertical,
      controller: _pageController,
      itemCount: _list.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return _list[index];
      },
    );
  }

  void _updatePageController(double availableHeight) {
    if (availableHeight < _minPageHeight) {
      _pageController = PageController(
        viewportFraction: _minPageHeight / availableHeight,
        initialPage: pageIndex,
      );
    } else {
      _pageController = PageController(
        viewportFraction: 1,
        initialPage: pageIndex,
      );
    }
  }

  @override
  void initState() {
    _list = [

      Store_Item_1(),
    ];

    super.initState();

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
              final availableHeight = constraints.maxHeight;
              _updatePageController(availableHeight);
              return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('lib/assets/images/background_location_1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(child:
                      Container(
                        color: Colors.black.withOpacity(0.4),
                        child: Row(
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

                            Expanded(child: Stack(
                              children: [

                                GestureDetector(
                                  onPanUpdate: (details){
                                    _onScroll(details.delta.dy * -1);
                                  },
                                  child: Listener(
                                      onPointerSignal: (pointerSignal) {
                                        if (pointerSignal is PointerScrollEvent) {
                                          _onScroll(pointerSignal.scrollDelta.dy);
                                        }
                                      },
                                      child: _pageView()
                                  ),
                                ),

                                Align(
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
                                    ) : SizedBox.shrink() : SizedBox.shrink(),
                                  ),
                                  alignment: Alignment.topCenter,
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


              );



            }
        ),

      );
  }
}
