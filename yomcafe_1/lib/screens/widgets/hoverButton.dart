import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class ButtonHover extends StatefulWidget {

  final String result;
  final bool isClicked;
  const ButtonHover({Key? key, required this.result, required this.isClicked, }) : super(key: key);

  @override
  State<ButtonHover> createState() => _ButtonHoversState();
}

class _ButtonHoversState extends State<ButtonHover> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (f) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (f) {
          setState(() {
            isHover = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child:
          Container(
              width: 120,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1.0,
                    color: blackColor
                ),
                color: widget.isClicked ? blackColor.withOpacity(0.1) : !isHover ? Colors.transparent : blackColor.withOpacity(0.1),
                borderRadius: const BorderRadius.all(
                    Radius.circular(32.0) //                 <--- border radius here
                ),
              ),
              child: Text(widget.result, style: textStyleMenuItem(blackColor),)
          )
        )
    );
  }
}

