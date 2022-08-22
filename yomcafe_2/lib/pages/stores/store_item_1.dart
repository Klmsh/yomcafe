import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../brand/GoogleMap.dart';
import 'GoogleMap_Stores.dart';

class Store_Item_1 extends StatefulWidget {
  const Store_Item_1({Key? key}) : super(key: key);

  @override
  State<Store_Item_1> createState() => _Store_Item_1State();
}

class Stores{


  Stores({
    required this.name,
    required this.address,
    required this.latitude,
    required this.longtitude,
    required this.image,
    required this.number,
  });

  final String name;
  final String address;
  final String latitude;
  final String longtitude;
  final String image;
  final String number;

}


class _Store_Item_1State extends State<Store_Item_1> {

  bool isReady = false;

  @override
  void initState() {

    appStart();
    super.initState();
  }

  Future<void> appStart() async {
    await setData();

    setState((){
      isReady = true;
    });
  }

  List<Stores> listIndexItem = [];

  Future<void> setData() async {

    if(listIndexItem.isNotEmpty || listIndexItem != null){

      String jsonString = await rootBundle.loadString('lib/assets/stores.json');
      var resultData = jsonDecode(jsonString);
      List _list = resultData["items"];
      for(int i = 0; i < _list.length; i++){
        var _result = _list[i];
        listIndexItem.add(Stores(name: _result["name"], address: _result["address"], latitude: _result["latitude"], longtitude: _result["longtitude"], image: _result["image"], number: _result["number"]));
      }

      setState((){
        isReady = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isReady ? Container(
      margin: EdgeInsets.all(0),
      height: double.infinity,
      child: MediaQuery.of(context).size.width > 900 ?

      Stack(
        children: [



          Positioned.fill(child:
          Align(
              alignment: Alignment.center,
              child:
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 800,
                    margin: EdgeInsets.only(left: 64, right: 64, top: MediaQuery.of(context).size.width > 1400 ? 64 : 0),
                    child: SvgPicture.asset(
                      'lib/assets/images/location_image_1.svg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 32, left: 32, right: 32),
                    width: 880,
                    child: AspectRatio(
                      aspectRatio: 7/4,
                      child: GoogleMapStores(list: listIndexItem,),
                    ),
                  ),

                ],
              )


          ),),



        ],
      ) : SizedBox.shrink(),
    ): SizedBox.shrink();
  }
}
