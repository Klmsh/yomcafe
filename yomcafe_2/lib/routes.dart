import 'package:flutter/material.dart';
import 'package:yomcafe/pages/brand/brandPage.dart';
import 'package:yomcafe/pages/guide/guidePage.dart';
import 'package:yomcafe/pages/menu/menuPage.dart';
import 'package:yomcafe/pages/stores/storePage.dart';
import 'pages/home/homePage.dart';

final routes = {
  '/': (BuildContext context) => const HomePage(index: 0,),
  '/brand': (BuildContext context) => const BrandPage(),
  '/menu': (BuildContext context) => const MenuPage(),
  '/guide': (BuildContext context) => const GuidePage(),
  '/inquiry': (BuildContext context) =>  const HomePage(index: 3,),
  '/stores' : (BuildContext context) => const StorePage(),

};