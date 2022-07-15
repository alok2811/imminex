import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

class CircleTextField extends StatelessWidget {
  final String text;
  const CircleTextField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: text.isEmpty? appGreyColor : appPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: Text(text, style: TextStyle(color: appWhiteColor,fontSize: 24, fontWeight: FontWeight.w400 ),),
    );
  }
}
