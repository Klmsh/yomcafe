
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


Widget homeListItem(var itemSize, String title, String imageURL, String address, String number){
  return

    Container(
        width: itemSize + 32,
        alignment: Alignment.center,
        child: Card(
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(16.0), //<-- SEE HERE
          ),
          elevation: 8,
          shadowColor: blackColor,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("욤 " + title, style: textItem_1(blackColor),),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage(imageURL),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: itemSize - itemSize/5,
                  width: itemSize,
                ),
                const SizedBox(height: 16,),
                AutoSizeText(address,
                  style:
                  GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: blackColor,
                          fontSize: 11,
                          fontWeight: FontWeight.bold)
                  ), maxLines: 1,),
                const SizedBox(height: 10,),
                AutoSizeText(number,
                  style:
                  GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: blackColor,
                          fontSize: 11,
                          fontWeight: FontWeight.bold)
                  ), maxLines: 1,),
              ],
            ),
          ),
        )

    );


}