import 'package:flutter/material.dart';
import 'package:yomcafe/styles/styles.dart';

class Guide_Item_2 extends StatefulWidget {
  const Guide_Item_2({Key? key}) : super(key: key);

  @override
  State<Guide_Item_2> createState() => _Guide_Item_2State();
}

class _Guide_Item_2State extends State<Guide_Item_2> {



  @override
  Widget build(BuildContext context) {
    return Container(
        width: 980,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 32, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 52,),

            Container(
              child: Image.asset(
                'lib/assets/reviews/image_1.png',
                fit: BoxFit.fitHeight,
              ),
              height: 330,
            ),

            const SizedBox(height: 64,),

            Text('"πλ°°λ¬μ λ―Όμ‘± λ§μ§λ­νΉπ" ', style: textTitleLevel_3(blackColor),),

            const SizedBox(height: 64,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/rank_1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),


                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/rank_1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32,),

            Text('πνκ·  λ§μ‘±λ "5μ "π', style: textTitleLevel_3(blackColor),),

            const SizedBox(height: 64,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/baemin_1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),


                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/baemin_2.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32,),

            Text('π"κ³ κ°μ κ°λμ μ§μ°©ν©λλ€"π', style: textTitleLevel_3(blackColor),),

            const SizedBox(height: 64,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/review_1.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),


                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/review_2.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/review_3.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),


                SizedBox(
                  width: 600/2,
                  child: Image.asset(
                    'lib/assets/reviews/review_4.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
