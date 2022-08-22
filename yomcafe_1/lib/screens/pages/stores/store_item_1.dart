import 'package:flutter/material.dart';

class Store_Item_1 extends StatefulWidget {
  const Store_Item_1({Key? key}) : super(key: key);

  @override
  State<Store_Item_1> createState() => _Store_Item_1State();
}

class _Store_Item_1State extends State<Store_Item_1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 980,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 32, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 64,),

          ],
        )
    );
  }
}
