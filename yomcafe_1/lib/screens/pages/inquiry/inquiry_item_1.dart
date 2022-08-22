import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yomcafe/styles/styles.dart';

class Inquiry_Item_1 extends StatefulWidget {
  const Inquiry_Item_1({Key? key}) : super(key: key);

  @override
  State<Inquiry_Item_1> createState() => _Inquiry_Item_1_1State();
}

enum Jompo {YESs, NOo}
enum Soyou {NONEs, YESs, NOo}

class _Inquiry_Item_1_1State extends State<Inquiry_Item_1> {

  late Jompo _jompo = Jompo.NOo;
  late Soyou _soyou = Soyou.NONEs;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 980,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 32, bottom: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 28,),
            Text("가맹 문의", style: textStyleMenu(blackColor),),
            const SizedBox(height: 8,),
            AutoSizeText("창업 전문가가 하나부터 차근차근 상담해드립니다.", style: textFastInquiry_3(blackColor), maxLines: 1,),
            const SizedBox(height: 64,),
            Container(
              margin: EdgeInsets.only(right: 16),
              width: double.infinity,
              child: Align(
                alignment: Alignment.topRight,
                child: Text("*필수입력 사항", style: textStyleMenuItem(blackColor),),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              width: double.infinity,
              height: 1,
              color: blackColor,
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("이름*", style: textItem_1(blackColor),),
                ),
                const Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
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
                      labelText: 'ex) 홍길동',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("연락처*", style: textItem_1(blackColor),),
                ),
                Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
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
                      labelText: 'ex) 010-xxxx-xxxx',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("이메일 주소*", style: textItem_1(blackColor),),
                ),
                const Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
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
                      labelText: 'ex) example@eample.com',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 16, bottom: 32),
              width: double.infinity,
              height: 1,
              color: blackColor,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("점포형황", style: textItem_1(blackColor),),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: Jompo.YESs,
                      groupValue: _jompo,
                      onChanged: (value){
                        setState((){
                          _jompo = Jompo.YESs;
                        });
                      },
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 3, right: 8),
                        child:Text("유", style: textItem_1(blackColor),)),

                    Radio(
                      value: Jompo.NOo,
                      groupValue: _jompo,
                      onChanged: (value){
                        setState((){
                          _jompo = Jompo.NOo;
                        });
                      },
                    ),
                    Padding(padding: const EdgeInsets.only(bottom: 3, right: 16),
                        child:Text("무", style: textItem_1(blackColor),)),
                  ],
                ),

                Padding(padding: EdgeInsets.only(bottom: 4, right: 16),
                  child: Text("|", style: textItem_1(Colors.grey.shade200),),),

                const Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
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
                      labelText: '점포 평수 ex) 20평',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(left: 16),
                    child: Text("소유현황", style: textItem_1(blackColor),),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio(
                        value: Soyou.NONEs,
                        groupValue: _soyou,
                        onChanged: (value){
                          setState((){
                            _soyou = Soyou.NONEs;
                          });
                        },
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 3, right: 8),
                          child:Text("없음", style: textItem_1(blackColor),)),

                      Radio(
                        value: Soyou.YESs,
                        groupValue: _soyou,
                        onChanged: (value){
                          setState((){
                            _soyou = Soyou.YESs;
                          });
                        },
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 3, right: 16),
                          child:Text("임대", style: textItem_1(blackColor),)),

                      Radio(
                        value: Soyou.NOo,
                        groupValue: _soyou,
                        onChanged: (value){
                          setState((){
                            _soyou = Soyou.NOo;
                          });
                        },
                      ),
                      Padding(padding: const EdgeInsets.only(bottom: 3, right: 16),
                          child:Text("자가", style: textItem_1(blackColor),)),
                    ],
                  ),
                ]),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 16),
                  child: Text("창업예상비용", style: textItem_1(blackColor),),
                ),
                const Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
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
                      labelText: 'ex) 4,600 ~ 8,000만원',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("창업희망지역", style: textItem_1(blackColor),),
                ),
                const Expanded(child:
                TextField(
                    cursorColor: blackColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
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
                      labelText: 'ex) 서울, 경기',
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("문의내용", style: textItem_1(blackColor),),
                ),
                const Expanded(child:
                TextField(
                    minLines: 10,
                    maxLines: 10000,
                    cursorColor: blackColor,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
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
                    )
                )),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              height: 1,
              color: Colors.grey.shade200,
            ),


            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 16),
                  child: Text("개인정보취급방침", style: textItem_1(blackColor),),
                ),
                Checkbox(value: isChecked, onChanged: (value){
                  setState((){
                    isChecked = value??false;
                  });
                },),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Container(
                    child: Text("개인정보보호법 등 관련법규에 의거하여 개인정보 수집 및 활용에 동의합니다.", style: textInquiryStyle(blackColor), ),
                  ),
                ),
                Container(width: 16,)
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 16, bottom: 64),
              width: double.infinity,
              height: 1,
              color: blackColor,
            ),

            Row(

              children: [
                Container(

                )
              ],

            )

          ],
        )
    );
  }
}
