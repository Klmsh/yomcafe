
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/pages/menu/menuGridList.dart';


const backgroundColor = Color(0xff393939);
const blackColor = Color(0xff222222);

List<listIndex> listIndexItem = [];
List imagesData = ["a","b","c","d","e","f","g","h"];
List menuList_1 = ["크로플", "샌드위치/떡볶이", "베이커리", "커피/라떼", "티/과일청"];
List menuList_2 = ["에이드", "스무디/프라페", "빙수"];

TextStyle headerMenuTextStyle(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color,fontSize: 24 ,letterSpacing: 4, fontWeight: FontWeight.bold),
  );
}

TextStyle headerSubMenuTextStyle(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color,fontSize: 16 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle asdStyle(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color,fontSize: 30 ,letterSpacing: 2, fontWeight: FontWeight.bold),
  );
}

TextStyle headerSmallMenuTextStyle(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color,fontSize: 14 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}

TextStyle textTitleLevel_1(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 24 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle textTitleLevel_2(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 40 ,letterSpacing: 1, fontWeight: FontWeight.normal),
  );
}

TextStyle textTitleLevel_3(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 24 ,letterSpacing: 1, fontWeight: FontWeight.bold),
  );
}

TextStyle textTitleLevel_4(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 14 ,letterSpacing: 5, fontWeight: FontWeight.w500),
  );
}

TextStyle textTitleLevel_5(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 4, fontWeight: FontWeight.bold),
  );
}

TextStyle textItem_1(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 14 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textItem_2(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 3, fontWeight: FontWeight.normal),
  );
}

TextStyle textFastInquiry(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 20 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textFastInquiry_2(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 34 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textFastInquiry_3(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 11 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}


TextStyle textFastInquiry_4(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color.withOpacity(0.8), fontSize: 15 ,letterSpacing: 3, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleHeaderss(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 30 ,letterSpacing:4, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleMenu(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 32 ,letterSpacing:2, fontWeight: FontWeight.bold),
  );
}

TextStyle textStyleMenuItem(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 12 ,letterSpacing:1, fontWeight: FontWeight.bold),
  );
}

TextStyle textInquiryStyle(Color color){
  return GoogleFonts.montserrat(
    textStyle: TextStyle(color: color, fontSize: 11 ,letterSpacing: 1, fontWeight: FontWeight.w500),
  );
}

TextStyle bottomSmallTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: const TextStyle(color: Colors.white,
        fontSize: 11,
        letterSpacing: 3,
        fontWeight: FontWeight.normal),
  );
}

