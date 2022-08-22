
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../styles/styles.dart';

class FastInquiry extends StatefulWidget {

  final bool isBottom;

  const FastInquiry({super.key, required this.isBottom});

  @override
  State<FastInquiry> createState() => _FastInquiryState();
}

class _FastInquiryState extends State<FastInquiry> {

  final nameController = TextEditingController();
  final numberController = TextEditingController();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 294,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16.0),
            topLeft: Radius.circular(16.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: !widget.isBottom ? Colors.white : blackColor,
            offset: const Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("창업상담문의", style: textFastInquiry(blackColor),),
            Text("1544-1204", style: textFastInquiry_2(blackColor),),
            const SizedBox(height: 4,),
            AutoSizeText("창업 전문가가 하나부터 차근차근 상담해드립니\n다.", style: textFastInquiry_3(blackColor), maxLines: 2,),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [

                    Container(
                      width: 203,
                      height: 44,
                      child: TextField(
                          controller: nameController,
                          cursorColor: blackColor,
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width: 1,color: blackColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width: 1,color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(width: 1,)
                            ),
                            labelText: '성함',
                          )
                      ),
                    ),

                    const SizedBox(height: 10,),

                    Container(
                      width: 203,
                      height: 44,
                      child: TextField(
                          controller: numberController,
                          cursorColor: blackColor,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width: 1,color: blackColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(width: 1,color: Colors.grey),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                borderSide: BorderSide(width: 1,)
                            ),
                            labelText: '연락처',
                          )
                      ),
                    )
                  ],
                ),

                Container(
                  width: 98,
                  height: 98,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: blackColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                    color: blackColor,
                    boxShadow: const [
                      BoxShadow(
                        color: blackColor,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text("무료상담\n신청하기", style: textFastInquiry_4(Colors.white),),
                  ),
                ),

              ],
            ),

            SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    activeColor: blackColor,
                    side: const BorderSide(
                        color: blackColor, width: 1
                    ),
                    checkColor: Colors.white,
                    value:ischecked ,
                    onChanged: (value) {
                      setState((){
                        if(ischecked){
                          ischecked = false;
                        }
                        else{
                          ischecked = true;
                        }

                      });
                    }),
                Text('개인정보처리방침 동의'),
                Text("*", style: TextStyle(color: Colors.red),)
              ],
            ),


          ],
        ),
      )
    );
  }
}
