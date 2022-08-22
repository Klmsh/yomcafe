import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart' as gMap;
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

import 'package:yomcafe/pages/stores/store_item_1.dart';

import '../../styles/styles.dart';

class GoogleMapStores extends StatefulWidget {

  final List<Stores> list;
  const GoogleMapStores({Key? key, required this.list}) : super(key: key);

  @override
  State<GoogleMapStores> createState() => _GoogleMapStoresState();
}

class _GoogleMapStoresState extends State<GoogleMapStores> {

  String htmlId = "7";
  double zoms = 8;
  String imageURL = "";
  String name = "";
  String address = "";
  String number = "";

  bool isReadyForContent = false;

  void notShowContent() {
    setState((){
      isReadyForContent = false;
    });
  }

  void setContent(Stores list){
    setState((){
      imageURL = list.image;
      name = list.name;
      address = list.address;
      number = list.number;
      isReadyForContent = true;
    });
  }

  Widget googleMaps(list) {
    final _icon = gMap.Icon()
      ..scaledSize = gMap.Size(65, 45)
      ..url = "lib/assets/iconss/yom.svg";
//ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final mapOptions = gMap.MapOptions()
        ..zoom = zoms
        ..center = gMap.LatLng(double.parse(list[0].latitude), double.parse(list[0].longtitude))
        ..mapTypeId = MapTypeId.ROADMAP;
      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';
      final map = gMap.GMap(elem, mapOptions);
      for(int i = 0; i < list.length; i++){
        double latitudes = double.parse(list[i].latitude);
        double longtitudes = double.parse(list[i].longtitude);
        Marker(MarkerOptions()
          ..position = gMap.LatLng(latitudes, longtitudes)
          ..map = map
          ..title = list[i].name
          ..clickable = true
          ..icon = _icon
        ).onClick.listen((event) {
          map.zoom = 17;
          map.center =gMap.LatLng(double.parse(list[i].latitude)- 0.0008, double.parse(list[i].longtitude) );
          setContent(list[i]);
        });
      }
      map.onClick.listen((event) {
        notShowContent();
      });
      return elem;
    });
    return HtmlElementView(viewType: htmlId);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        googleMaps(widget.list),
        isReadyForContent ? Positioned.fill(child:
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(left: 32, right: 64, bottom: 16),
            height: 200,
            width: double.infinity,
            child: Card(
              shadowColor: blackColor,
              elevation: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(imageURL),
                        fit: BoxFit.fill,
                      ),
                    ),
                    height: double.infinity,
                    width: 200,
                  ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Text(name, style: textFastInquiry_4(Colors.black),),

                      SizedBox(height: 16,),
                      Text(address, style: textFastInquiry_5(Colors.black),),
                      SizedBox(height: 16,),
                      Text(number, style: textFastInquiry_3(Colors.black),),
                    ],
                  ))
                ],
              ),
            ),
          ),
        )) : SizedBox.shrink()
      ],
    );
  }
}


// class GoogleMapStores extends StatelessWidget {
//
//   final List<Stores> list;
//
//   const GoogleMapStores({Key? key, required this.list}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     String htmlId = "7";
//     double zoms = 7;
//     String imageURL = "";
//
//
//     final _icon = gMap.Icon()
//       ..scaledSize = gMap.Size(65, 45)
//       ..url = "lib/assets/iconss/yom.svg";
//
//     //ignore: undefined_prefixed_name
//     ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
//
//
//       final mapOptions = gMap.MapOptions()
//         ..zoom = zoms
//         ..center = gMap.LatLng(double.parse(list[0].latitude), double.parse(list[0].longtitude))
//         ..mapTypeId = MapTypeId.ROADMAP;
//
//       final elem = DivElement()
//         ..id = htmlId
//         ..style.width = "100%"
//         ..style.height = "100%"
//         ..style.border = 'none';
//
//       final map = gMap.GMap(elem, mapOptions);
//
//
//       for(int i = 0; i < list.length; i++){
//
//         double latitudes = double.parse(list[i].latitude);
//         double longtitudes = double.parse(list[i].longtitude);
//
//
//         Marker(MarkerOptions()
//           ..position = gMap.LatLng(latitudes, longtitudes)
//           ..map = map
//           ..title = list[i].name
//           ..clickable = true
//           ..icon = _icon
//         ).onClick.listen((event) {
//           map.zoom = 17;
//           map.center =gMap.LatLng(double.parse(list[i].latitude)- 0.0008, double.parse(list[i].longtitude) );
//         });
//
//       }
//
//       return elem;
//     });
//
//     return Stack(
//       children: [
//         HtmlElementView(viewType: htmlId),
//         Positioned.fill(child:
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             margin: EdgeInsets.only(left: 32, right: 64, bottom: 16),
//             height: 200,
//             width: double.infinity,
//             child: Card(
//               shadowColor: blackColor,
//               elevation: 8,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: ExactAssetImage(imageURL),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                     height: double.infinity,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ))
//       ],
//     );
//   }
// }