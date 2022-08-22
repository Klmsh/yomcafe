import 'dart:html';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_maps/google_maps.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    String htmlId = "8";


    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(37.2799212, 126.9978643);

      final mapOptions = MapOptions()
        ..zoom = 19
        ..center = myLatlng;

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';



      final map = GMap(elem, mapOptions);



      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = '욤 Yom - 본점'
          ..clickable = true
      );

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}