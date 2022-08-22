import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yomcafe/styles/styles.dart';

class Guide_Item_1 extends StatefulWidget {
  const Guide_Item_1({Key? key}) : super(key: key);

  @override
  State<Guide_Item_1> createState() => _Guide_Item_1State();
}

class _Guide_Item_1State extends State<Guide_Item_1> {


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return
      Container(
        margin: EdgeInsets.all(0),
        height: double.infinity,
        child: MediaQuery.of(context).size.width > 900 ?

        Stack(
          children: [


            Positioned.fill(child:
            Align(
              alignment: MediaQuery.of(context).size.width > 1400 ? Alignment.centerLeft : Alignment.topCenter,
              child: Container(
                width: 900,

                margin: EdgeInsets.only(top: MediaQuery.of(context).size.width > 1400 ? 0 : 0),
                child: MediaQuery.of(context).size.width > 1400 ? SvgPicture.asset(
                     'lib/assets/images/guide_image_1_1.svg',
                    fit: BoxFit.fitWidth,
                ) : Container(
                  width: 500,
                  margin: const EdgeInsets.only(left: 64, right: 64,),
                  child: SvgPicture.asset(
                    'lib/assets/images/guide_image_1_4.svg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ),),

            // SvgPicture.asset(
            //   MediaQuery.of(context).size.width > 1400 ? 'lib/assets/images/guide_image_1_4.svg' : 'lib/assets/images/guide_image_1_4.svg',
            //   fit: BoxFit.fill,
            // ),


            // Align(
            //   alignment: Alignment.center,
            //   child: ConstrainedBox(
            //       constraints: const BoxConstraints(
            //         maxHeight: 600.0,
            //       ),
            //       child: Container(
            //         margin: EdgeInsets.only(top: 0),
            //         child: AspectRatio(
            //             aspectRatio: 4/3,
            //             child:FittedBox(
            //               fit: BoxFit.fill,
            //               child: Image.asset(
            //                 'lib/assets/images/guide_image_1_1.png',
            //                 fit: BoxFit.fill,
            //               ),
            //             )
            //         ),
            //       )
            //   ),
            // ),


            Positioned.fill(child:
            Align(
                alignment: Alignment.bottomCenter,
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: InkWell(
                      mouseCursor: MaterialStateMouseCursor.clickable,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => {

                      },
                      child:Text("▼SCROLLDOWN▼", style: textTitleLevel_5(Colors.white))),
                )
            )),
          ],
        ) : SizedBox.shrink(),
      );
  }
}
