import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yomcafe/styles/styles.dart';

class Guide_Item_2 extends StatefulWidget {
  const Guide_Item_2({Key? key}) : super(key: key);

  @override
  State<Guide_Item_2> createState() => _Guide_Item_2State();
}

class _Guide_Item_2State extends State<Guide_Item_2> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(0),
        height: double.infinity,
        child: MediaQuery.of(context).size.width > 900 ?

        Stack(
          children: [


            Positioned.fill(child:
            Align(
                alignment:  Alignment.center,
                child: Container(

                    width: 1000,

                  margin: EdgeInsets.only(top: 0, left: 64, right: 64),
                  child: MediaQuery.of(context).size.width > 1400 ?
                  SvgPicture.asset(
                    'lib/assets/images/guide_image_2_1.svg',
                    fit: BoxFit.fitWidth,
                  ) : Center(
                    child: Container(
                      child: SvgPicture.asset(
                        'lib/assets/images/guide_image_2_2.svg',
                        fit: BoxFit.fitWidth,
                      ),
                      width: 600,
                    ),
                  )
                )




            ),),


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
