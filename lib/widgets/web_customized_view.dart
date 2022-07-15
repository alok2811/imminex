import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/colors.dart';

class WebCustomizedView extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget> actions;
  const WebCustomizedView(
      {Key? key,
      required this.title,
      required this.body,
      this.actions = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double textWidthSize = (TextPainter(
            text: TextSpan(
              text: title,
            ),
            textDirection: TextDirection.ltr)
          ..layout())
        .size
        .width;
    print("text Width value:$textWidthSize");
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: actions,
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: (textWidthSize * 2) - 10,
                      height: 1.5,
                      color: appPrimaryColor,
                    ),
                    Expanded(
                      child: Divider(
                        height: 0.5,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              height: Get.height,
              width: Get.width,
              child: Card(color: appWhiteColor, child: body),
            ),
          ))
        ],
      ),
    );
  }
}
