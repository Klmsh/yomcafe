
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../styles/styles.dart';

Widget InkWell_BTN(BuildContext context, Widget widget, Function function){
  return InkWell(
    mouseCursor: MaterialStateMouseCursor.clickable,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () => function(),
    child: widget,
  );
}

Widget homeCenterContainer(context ,width, height, _list, funtion, isBottom){
  return Container(
    width: height,
    height: height,
    color: !isBottom ? Colors.black.withOpacity(0.5) : Colors.white,
    child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(_list[0], style: textTitleLevel_1(isBottom ? blackColor : Colors.white),),
        const SizedBox(height: 24,),
        Text(_list[1], style: textTitleLevel_2(isBottom ? blackColor : Colors.white),),
        const SizedBox(height: 32,),
        Text(_list[2], style: textTitleLevel_3(isBottom ? blackColor : Colors.white),),
        const SizedBox(height: 48,),


        InkWell(
          mouseCursor: MaterialStateMouseCursor.clickable,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () => {

          },
          child: Container(
              width: 180,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isBottom ? blackColor : Colors.white,
                  width: 1,
                ),
              ),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: InkWell_BTN(
                        context,
                        Text(_list[3], style: textTitleLevel_4(isBottom ? blackColor : Colors.white),),
                            () {
                          print("Clicked");
                        }
                    ),
                  )
              )
          ),
        ),
        const SizedBox(height: 32,)
      ],
    ),
  );
}

