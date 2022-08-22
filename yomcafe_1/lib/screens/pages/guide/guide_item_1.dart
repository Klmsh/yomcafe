import 'package:flutter/material.dart';
import 'package:yomcafe/styles/styles.dart';

class Guide_Item_1 extends StatefulWidget {
  const Guide_Item_1({Key? key}) : super(key: key);

  @override
  State<Guide_Item_1> createState() => _Guide_Item_1State();
}

class _Guide_Item_1State extends State<Guide_Item_1> {


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
            Image.asset(
              'lib/assets/images/guide_img_2.jpeg',
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 64,),
            Image.asset(
              'lib/assets/images/guide_img.jpeg',
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 64,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 700/2,
                  child: Image.asset(
                    'lib/assets/revenues/image_1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),


                SizedBox(
                  width: 700/2,
                  child: Image.asset(
                    'lib/assets/revenues/image_2.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
