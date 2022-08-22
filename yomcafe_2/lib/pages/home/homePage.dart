import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:video_player/video_player.dart';
import '../../../styles/styles.dart';
import '../../layouts/header.dart';
import 'home_item_1.dart';
import 'home_item_2.dart';
import 'home_item_3.dart';
import 'home_item_4.dart';
import 'home_item_5.dart';

class HomePage extends StatefulWidget {

  final int index;

  const HomePage({Key? key, required this.index}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List _list;
  bool isReady = false;
  bool pageIsScrolling = false;
  bool isBottom = false;
  PageController _pageController = PageController();
  late VideoPlayerController controller_1;
  late VideoPlayerController controller_2;
  int pageIndex = 0;
  final double _minPageHeight = 600;

  @override
  void initState() {
    videoControllerSet();
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
    controller_1.dispose();
    controller_2.dispose();
  }

  Future<void> videoControllerSet() async {
    controller_1 = VideoPlayerController.asset("lib/assets/videos/video_1.mp4");
    controller_1.setLooping(true);
    controller_1.setVolume(0);

    controller_2 = VideoPlayerController.asset("lib/assets/videos/video_2.mp4");
    controller_2.setLooping(true);
    controller_2.setVolume(0);

    await controller_1.initialize();
    await controller_2.initialize();


    _list = [

      Home_Item_1(controller: controller_1),
      Home_Item_2(controller: controller_2),
      Home_Item_3(),
      Home_Item_4(),
      Home_Item_5(),

    ];



    setState(() {
      isReady = true;
      if(widget.index == 3){
      Future.delayed(const Duration(milliseconds: 400), () {

        _onClickContainer(widget.index);


      });

    }});


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

  Container _container(Color color) {
    return  Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color == Colors.transparent ? Colors.white : color,
          width: 1,
        ),
        color: color,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
          backgroundColor: blackColor,
          body: isReady ? Stack(
            children: [
              LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final availableHeight = constraints.maxHeight;
                    _updatePageController(availableHeight);
                    return GestureDetector(
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
                    );
                  }
              ),

              Positioned.fill(
                  child:
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        width: 32,
                        height: (_list.length * 20),
                        margin: EdgeInsets.only(right: MediaQuery.of(context).size.width > 950 ?64:16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceBetween,
                          children: [
                            ..._list.map((e) =>
                                InkWell(
                                    mouseCursor: MaterialStateMouseCursor
                                        .clickable,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () =>
                                    {
                                      if(pageIndex != _list.indexOf(e))
                                        {
                                          _onClickContainer(_list.indexOf(e))
                                        },
                                    },
                                    child: _container(
                                        pageIndex == _list.indexOf(e)
                                            ? Colors.white
                                            : Colors.transparent
                                    )
                                )
                            )
                          ],
                        )
                    ),
                  )
              ),

              Header(),

              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Container(
              //     margin: EdgeInsets.only(left: MediaQuery.of(context).size.width > 1100 ? 64 : 16, bottom: pageIndex == _list.length-1 ? 153 : 0),
              //     child: FastInquiry(isBottom: isBottom,),
              //   ),
              // )
            ],
          ) : Container()
      );
  }

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
            if(pageIndex == _list.length - 1){
              isBottom = true;
            }
            else{
              isBottom = false;
            }
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
            if(pageIndex == _list.length - 1){
              isBottom = true;
            }
            else{
              isBottom = false;
            }
          })

        });
      }
    }
  }

  void _onClickContainer(int i){

    if (pageIsScrolling == false) {
      pageIsScrolling = true;
      _pageController
          .animateToPage(
          i,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut)
          .then((value) =>
      {
        setState((){
          pageIndex = i;
          pageIsScrolling = false;

          if(pageIndex == _list.length - 1){
            isBottom = true;
          }
          else{
            isBottom = false;
          }
        })
      });
    }
  }
}
