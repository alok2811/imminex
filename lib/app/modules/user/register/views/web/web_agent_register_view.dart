import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/base/colors.dart';
import 'package:imminex/helper/app_screen_resize.dart';
import 'package:imminex/widgets/text_input_field.dart';

import '../../controllers/register_controller.dart';
import 'dart:math' as math;

class WebAgentRegisterView extends StatelessWidget {
  const WebAgentRegisterView({
    Key? key,
  }) : super(key: key);
  static RegisterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: Get.height,
            width: Get.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/web/images/login_bg.png"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'immiNex',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.008,
                ),
                Text(
                  'SignUp to your agent account',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                Obx(() {
                    return SizedBox(
                      width: AppScreenResize.webRegisterCardWidth,
                      // Get.width / 1.45,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 200,
                                  height: 160,
                                  // color: Colors.black,
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 16),
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: appPrimaryColor),
                                            shape: BoxShape.circle),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: appPrimaryColor,
                                              shape: CircleBorder()),
                                          onPressed: () {},
                                          child: Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                              child: TextInputField(
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            hintText: "Name",
                                          )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              child: TextInputField(
                                            readOnly: true,
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            contentPadding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            hintText: "License Number",
                                            suffix: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  child: Transform.rotate(
                                                      angle: -math.pi / 4,
                                                      child: Icon(
                                                        Icons.attachment_rounded,
                                                        color: Colors.grey,
                                                      )),
                                                )
                                              ],
                                            ),
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: TextInputField(
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            hintText: "Email",
                                          )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              child: TextInputField(
                                            readOnly: true,
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            contentPadding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            hintText: "ID proof",
                                            suffix: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  onTap: () => print("object"),
                                                  child: Transform.rotate(
                                                      angle: -math.pi / 4,
                                                      child: Icon(
                                                        Icons.attachment_rounded,
                                                        color: Colors.grey,
                                                      )),
                                                )
                                              ],
                                            ),
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: TextInputField(
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: "Phone Number",
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                          )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              child: TextInputField(
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: "Upload IRC",
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: TextInputField(
                                            obscureText: controller.obscureText.value,
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: "Password",
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            suffix: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                              TextButton(onPressed:()  =>
                                                        controller.onObsecureText(), child: Text(
                                                      "SHOW",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 13),
                                                    ))
                                              ],
                                            ),
                                          )),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              child: TextInputField(
                                                obscureText: controller.obscureText.value,
                                            enableBorderSide: false,
                                            fillColor: Colors.white,
                                            filled: true,
                                            hintText: "Confirm Password",
                                            contentPadding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            suffix: Row(
                                                mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextButton(onPressed:()  =>
                                                        controller.onObsecureText(), child: Text(
                                                      "SHOW",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 13),
                                                    ))
                                              ,
                                              ],
                                            ),
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      SizedBox(
                                          width: Get.width,
                                          height: Get.height * 0.05,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                'SIGNUP',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500),
                                              ))),
                                      SizedBox(
                                        height: Get.height * 0.025,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: "Don't have an account? ",
                                          style: TextStyle(color: Colors.grey),
                                          children: const <TextSpan>[
                                            TextSpan(
                                                text: 'Login',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    decoration:
                                                        TextDecoration.underline,
                                                    color: Color(0xff2054A4))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  }
                ),
              ],
            )));
  }
}
