
import 'package:flutter/material.dart';
import 'package:yomcafe/screens/pages/brand/brandPage.dart';
import 'package:yomcafe/screens/pages/guide/guidePage.dart';
import 'package:yomcafe/screens/pages/home/homePage.dart';
import 'package:yomcafe/screens/pages/inquiry/inquiryPage.dart';
import 'package:yomcafe/screens/pages/menu/menuPage.dart';
import 'package:yomcafe/screens/pages/stores/storePage.dart';

final routes = {
  '/': (BuildContext context) => const HomePage(),
  '/brand': (BuildContext context) => const BrandPage(),
  '/menu': (BuildContext context) => const MenuPage(),
  '/guide': (BuildContext context) => const GuidePage(),
  '/inquiry': (BuildContext context) => const InquiryPage(),
  '/stores' : (BuildContext context) => const StorePage(),

};