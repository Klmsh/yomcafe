import 'package:flutter/material.dart';
import 'package:yomcafe/routes.dart';
import 'package:yomcafe/styles/styles.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
      '욤 - 프랜차이즈 카페 | 디저트 카페',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: blackColor, primaryColorDark: blackColor
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}