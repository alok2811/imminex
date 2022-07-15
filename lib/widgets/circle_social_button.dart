import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

class CircularSocialButton extends StatelessWidget {
  final Widget icon;
  final Color borderColor;
  final Color backGroundColor;
  final void Function()? onPressed;

  const CircularSocialButton(
      {Key? key,
      required this.icon,
      required this.borderColor,
      required this.onPressed,
      this.backGroundColor = appBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
      elevation: 0,
      fillColor: backGroundColor,
      child: icon,
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(side: BorderSide(color: borderColor)),
    );
  }
}
