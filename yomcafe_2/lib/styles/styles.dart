
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/menu/menuGridList.dart';


const backgroundColor = Color(0xff312e2d);
const blackColor = Color(0xff222222);

List<listIndex> listIndexItem = [];
List imagesData = ["a","b","c","d","e","f","g","h"];
List menuList_1 = ["크로플", "샌드위치/떡볶이", "베이커리", "커피/라떼", "티/과일청"];
List menuList_2 = ["에이드", "스무디/프라페", "빙수"];

TextStyle headerMenuTextStyle(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color,fontSize: 24 ,letterSpacing: 4, fontWeight: FontWeight.bold),
  );
}

TextStyle headerSubMenuTextStyle(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color,fontSize: 16 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle asdStyle(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color,fontSize: 30 ,letterSpacing: 2, fontWeight: FontWeight.bold),
  );
}

TextStyle headerSmallMenuTextStyle(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color,fontSize: 14 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}

TextStyle headerSmallMenuTextStyle2(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color,fontSize: 16 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}


TextStyle textTitleLevel_1(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 24 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle textTitleLevel_2(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 32 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle textTitleLevel_3(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 24 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}

TextStyle textTitleLevel_4(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 14 ,letterSpacing: 5, fontWeight: FontWeight.w500),
  );
}

TextStyle textTitleLevel_5(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 4, fontWeight: FontWeight.bold),
  );
}

TextStyle textItem_1(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 12 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}

TextStyle textItem_2(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 3, fontWeight: FontWeight.normal),
  );
}

TextStyle textFastInquiry(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 26 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textFastInquiry_2(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 38 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textFastInquiry_3(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 13 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}


TextStyle textFastInquiry_4(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 16 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textFastInquiry_5(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 14 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleHeaderss(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 30 ,letterSpacing:4, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleMenu(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 32 ,letterSpacing:2, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleMenuItem(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 12 ,letterSpacing:1, fontWeight: FontWeight.bold),
  );
}

TextStyle textInquiryStyle(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 1, fontWeight: FontWeight.w500),
  );
}



TextStyle bottomSmallTextStyle() {
  return GoogleFonts.sora(
    textStyle: const TextStyle(color: Colors.white,
        fontSize: 8,
        letterSpacing: 3,
        fontWeight: FontWeight.normal),
  );
}

TextStyle buttomTextStyle_1(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 30 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}


TextStyle buttomTextStyle_2(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 18 ,letterSpacing: 5, fontWeight: FontWeight.w900),
  );
}

TextStyle buttomTextStyle_3(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 14 ,letterSpacing: 1, fontWeight: FontWeight.w500),
  );
}


TextStyle buttomTextStyle_4(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 20 ,letterSpacing: 5, fontWeight: FontWeight.w900),
  );
}

TextStyle textStyleStory_1(Color color){
  return GoogleFonts.sora(
    textStyle: TextStyle(color: color, fontSize: 44 ,letterSpacing:4, fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,),
  );
}