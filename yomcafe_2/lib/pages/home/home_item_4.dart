import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yomcafe/styles/styles.dart';

import '../../widgets/widgets.dart';

class Home_Item_4 extends StatefulWidget {

  @override
  _Home_Item_4_1State createState() => _Home_Item_4_1State();
}

class _Home_Item_4_1State extends State<Home_Item_4> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('lib/assets/images/bake.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: MediaQuery.of(context).size.width > 840 ? item_1() : item_2()

    );
  }

  Widget item_1(){
    return Container(
        color: Colors.black.withOpacity(0.4),
        child:
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: MediaQuery.of(context).size.width > 914 ? 914 : MediaQuery.of(context).size.width,
                  height: 671,
                  margin: const EdgeInsets.only(top: 32),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: const EdgeInsets.only(left: 64, right: 64),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("가맹 문의", style: textStyleMenu(Colors.white),),
                            const SizedBox(height: 8,),
                            AutoSizeText("창업 전문가가 하나부터 차근차근 상담해드립니다.", style: textFastInquiry_3(Colors.white), maxLines: 1,),
                            const SizedBox(height: 32,),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: double.infinity,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text("*필수입력 사항", style: textStyleMenuItem(Colors.white),),
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 16, bottom: 16),
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(
                              height: 44,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          margin: const EdgeInsets.only(left: 16),
                                          child: Text("이름*", style: textItem_1(Colors.white),),
                                        ),
                                        Expanded(child:
                                        TextField(
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
                                            labelText: 'ex) 홍길동',
                                          ),
                                          style: textItem_1(blackColor) ,
                                        )),
                                        Container(width: 16,)
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          margin: EdgeInsets.only(right: 16),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("연락처*", style: textItem_1(Colors.white),),
                                          ),
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
                                              borderSide: BorderSide(width: 1,color: Colors.white),
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
                                          ),
                                          style: textItem_1(blackColor) ,
                                        )),
                                        Container(width: 16,)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.all(16),
                              width: double.infinity,
                              height: 1,
                              color: Colors.grey.shade200,
                            ),

                            SizedBox(
                              height: 44,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          margin: EdgeInsets.only(left: 16),
                                          child: Text("이메일 주소*", style: textItem_1(Colors.white),),
                                        ),
                                        Expanded(child:
                                        TextField(
                                          cursorColor: blackColor,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              borderSide: BorderSide(width: 1,color: Colors.white),
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
                                          ),
                                          style: textItem_1(blackColor) ,
                                        )),
                                        Container(width: 16,)
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                      flex: 1,
                                      child:
                                      Container()
                                  )
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(top: 16, bottom: 16),
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),

                            SizedBox(
                              height: 44,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          margin: const EdgeInsets.only(left: 16),
                                          child: Text("창업예상비용", style: textItem_1(Colors.white),),
                                        ),
                                        Expanded(child:
                                        TextField(
                                          cursorColor: blackColor,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              borderSide: BorderSide(width: 1,color: Colors.white),
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
                                          ),
                                          style: textItem_1(blackColor) ,
                                        )),
                                        Container(width: 16,)
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child:
                                    Row(
                                      children: [
                                        Container(
                                            width: 150,
                                            margin: EdgeInsets.only(right: 16),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("창업희망지역", style: textItem_1(Colors.white),),
                                            )
                                        ),
                                        Expanded(child:
                                        TextField(
                                          cursorColor: blackColor,
                                          keyboardType: TextInputType.name,
                                          decoration: const InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              borderSide: BorderSide(width: 1,color: Colors.white),
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
                                          ),
                                          style: textItem_1(blackColor) ,
                                        )),
                                        Container(width: 16,)
                                      ],
                                    ),
                                  )
                                ],
                              ),
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
                                  child: Text("문의내용*", style: textItem_1(Colors.white),),
                                ),
                                const Expanded(child:
                                TextField(
                                    minLines: 5,
                                    maxLines: 5,
                                    cursorColor: blackColor,
                                    keyboardType: TextInputType.multiline,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(4)),
                                        borderSide: BorderSide(width: 1,color: Colors.white),
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
                                  child: Text("개인정보취급방침", style: textItem_1(Colors.white),),
                                ),
                                Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Colors.white,
                                  ),
                                  child: Checkbox(value: isChecked, onChanged: (value){
                                    setState((){
                                      isChecked = value??false;
                                    });
                                  },
                                    activeColor: Colors.white,
                                    checkColor: blackColor,),
                                ),


                                AutoSizeText("개인정보보호법 등 관련법규에 의거하여 개인정보 수집 및 활용에 동의합니다.", style: textInquiryStyle(Colors.white), maxLines: 3,),
                                Container(width: 16,)
                              ],
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 16, bottom: 32),
                              width: double.infinity,
                              height: 1,
                              color: Colors.white,
                            ),

                            InkWell(
                              mouseCursor: MaterialStateMouseCursor.clickable,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () => {
                              },
                              child: InkWell_BTN(context,

                                  Container(
                                      width: 190,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(bottom: 4),
                                          child: Text("문의하기", style: textTitleLevel_4(Colors.white),),

                                        ),
                                      )
                                  ),
                                      (){
                                    Navigator.pushNamed(context, '/');
                                  }
                              ),


                            ),

                          ],
                        )
                    ),
                  )


              ),
            ),
          ],
        ));
  }

  Widget item_2(){
    return Container(
        color: Colors.black.withOpacity(0.4),
        child:
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: MediaQuery.of(context).size.width > 914 ? 914 : MediaQuery.of(context).size.width,
                  height: 671,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height < 700 ? 100 : 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: const EdgeInsets.only(left: 64, right: 64),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("가맹 문의", style: textStyleMenu(Colors.white),),
                                const SizedBox(height: 8,),
                                AutoSizeText("창업 전문가가 하나부터 차근차근 상담해드립니다.", style: textFastInquiry_3(Colors.white), maxLines: 1,),
                                const SizedBox(height: 32,),
                                Container(
                                  margin: EdgeInsets.only(right: 16),
                                  width: double.infinity,
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text("*필수입력 사항", style: textStyleMenuItem(Colors.white),),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.white,
                                ),

                                SizedBox(height: 44,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(left: 16),
                                        child: Text("이름*", style: textItem_1(Colors.white),),
                                      ),
                                      Expanded(child:
                                      TextField(
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
                                          labelText: 'ex) 홍길동',
                                        ),
                                        style: textItem_1(blackColor) ,
                                      )),
                                      Container(width: 16,)
                                    ],
                                  ),),

                                SizedBox(height: 16,),

                                SizedBox(height: 44,
                                  child: Row(
                                    children: [

                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(left: 16),
                                        child: Text("연락처*", style: textItem_1(Colors.white),),
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
                                            borderSide: BorderSide(width: 1,color: Colors.white),
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
                                        ),
                                        style: textItem_1(blackColor) ,
                                      )),
                                      Container(width: 16,)
                                    ],
                                  ),),

                                Container(
                                  margin: const EdgeInsets.all(16),
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.grey.shade200,
                                ),

                                SizedBox(
                                  height: 44,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        margin: EdgeInsets.only(left: 16),
                                        child: Text("이메일 주소*", style: textItem_1(Colors.white),),
                                      ),
                                      Expanded(child:
                                      TextField(
                                        cursorColor: blackColor,
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                            borderSide: BorderSide(width: 1,color: Colors.white),
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
                                        ),
                                        style: textItem_1(blackColor) ,
                                      )),
                                      Container(width: 16,)
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.white,
                                ),

                                SizedBox(
                                  height: 44,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(left: 16),
                                        child: Text("창업예상비용", style: textItem_1(Colors.white),),
                                      ),
                                      Expanded(child:
                                      TextField(
                                        cursorColor: blackColor,
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                            borderSide: BorderSide(width: 1,color: Colors.white),
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
                                        ),
                                        style: textItem_1(blackColor) ,
                                      )),
                                      Container(width: 16,)
                                    ],
                                  ),
                                ),

                                SizedBox(height: 16,),

                                SizedBox(
                                  height: 44,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        margin: const EdgeInsets.only(left: 16),
                                        child: Text("창업희망지역", style: textItem_1(Colors.white),),
                                      ),

                                      Expanded(child:
                                      TextField(
                                        cursorColor: blackColor,
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                            borderSide: BorderSide(width: 1,color: Colors.white),
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
                                        ),
                                        style: textItem_1(blackColor) ,
                                      )),
                                      Container(width: 16,)
                                    ],
                                  ),
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
                                      child: Text("문의내용*", style: textItem_1(Colors.white),),
                                    ),
                                    const Expanded(child:
                                    TextField(
                                        minLines: 3,
                                        maxLines: 3,
                                        cursorColor: blackColor,
                                        keyboardType: TextInputType.multiline,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(4)),
                                            borderSide: BorderSide(width: 1,color: Colors.white),
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
                                  margin: const EdgeInsets.only(top: 16, bottom: 16),
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
                                      child: Text("개인정보취급방침", style: textItem_1(Colors.white),),
                                    ),
                                    Theme(
                                      data: Theme.of(context).copyWith(
                                        unselectedWidgetColor: Colors.white,
                                      ),
                                      child: Checkbox(value: isChecked, onChanged: (value){
                                        setState((){
                                          isChecked = value??false;
                                        });
                                      },
                                        activeColor: Colors.white,
                                        checkColor: blackColor,),
                                    ),

                                    MediaQuery.of(context).size.width > 715 ? Text("개인정보보호법 등 관련법규에 의거하여 개인정보 수집 및 활용에 동의합니다.", style: GoogleFonts.sora(
                                      textStyle: TextStyle(color: Colors.white, fontSize: 10 ,letterSpacing: 1, fontWeight: FontWeight.bold),
                                    ),) : Padding(padding: EdgeInsets.only(top: 5),
                                    child: Text("개인정보보호법 등 관련법규에 의거하여\n개인정보 수집 및 활용에 동의합니다.", style: GoogleFonts.sora(
                                      textStyle: TextStyle(color: Colors.white, fontSize: 8 ,letterSpacing: 1, fontWeight: FontWeight.bold),
                                    ),),),

                                    Container(width: 16,)
                                  ],
                                ),

                                Container(
                                  margin: const EdgeInsets.only(top: 16, bottom: 32),
                                  width: double.infinity,
                                  height: 1,
                                  color: Colors.white,
                                ),

                                InkWell(
                                  mouseCursor: MaterialStateMouseCursor.clickable,
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () => {
                                  },
                                  child: InkWell_BTN(context,

                                      Container(
                                          width: 190,
                                          height: 44,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 4),
                                              child: Text("문의하기", style: textTitleLevel_4(Colors.white),),

                                            ),
                                          )
                                      ),
                                          (){
                                        Navigator.pushNamed(context, '/');
                                      }
                                  ),


                                ),
                              ],
                            ),

                          ],
                        )
                    ),
                  )


              ),
            ),
          ],
        ));
  }
}