import 'package:flutter/material.dart';
import 'package:imminex/base/colors.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffix, prefix;
  final bool autofocus;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool filled;
  final Color? fillColor;
  final bool enableBorderSide;
  final bool readOnly;


  final EdgeInsets contentPadding;
  const TextInputField({
    Key? key,
     this.controller,
    this.hintText,
    this.suffix,
    this.prefix,
    this.fillColor,
    this.keyboardType = TextInputType.text,
    this.autofocus = false,
    this.obscureText = false,
    this.filled = false,
    this.contentPadding = const EdgeInsets.all( 10),
    
    this.enableBorderSide = true,
    this.readOnly = false,
   
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return TextField(
      // obscuringCharacter: '●',
      readOnly:  readOnly,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      autofocus: autofocus,
      // style: obscureText ? TextStyle(fontSize: 50):null,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffix,
        prefixIcon: prefix,
        fillColor: fillColor,
        filled: filled,
        counterText: "",
        contentPadding: contentPadding,
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: appPrimaryColor)
          
        ),
        border:  OutlineInputBorder(
          
          borderSide: enableBorderSide?  BorderSide() :BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        )
      ),
    );
  }
}
