import 'package:flutter/material.dart';

import '../base/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const RoundedButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
        shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        onPressed: onTap,
        padding: EdgeInsets.all(15.0),

        child: Text(text, style: TextStyle(color: appBlackColor ,fontSize: 30, fontWeight: FontWeight.w400 ),));
  }
}
