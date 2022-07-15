import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/base/colors.dart';
import 'package:imminex/helper/app_screen_resize.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../controllers/verifiaction_page_controller.dart';

class WebOTPview extends StatelessWidget {
  const WebOTPview({
    Key? key,
  }) : super(key: key);
  static VerifiactionPageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: Get.height,
            width: Get.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/web/images/otp_bg.png"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'immiNex',
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: Get.height * 0.025,
                ),
                SizedBox(
                  width: AppScreenResize.webAuthCardWidth,
                  // Get.width / 2.6,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            "We have sent you One Time\nPassword to your email",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: Get.height * 0.015,
                          ),
                          Text(
                            "Please Enter OTP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: Get.height * 0.015,
                          ),
                          Text(
                            "01:55",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          OTPTextField(
                            length: 6,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 55,
                            spaceBetween: 5,
                            style: TextStyle(fontSize: 25),
                            textFieldAlignment: MainAxisAlignment.spaceBetween,
                            fieldStyle: FieldStyle.underline,
                            otpFieldStyle: OtpFieldStyle(
                                focusBorderColor: appPrimaryColor),
                            inputFormatter: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9]')),
                            ],
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          SizedBox(
                              width: Get.width,
                              height: Get.height * 0.05,
                              child: ElevatedButton(
                                  onPressed: () => Get.offAllNamed(Routes.DASHBOARD),
                                  child: Text(
                                    'VERIFY OTP',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ))),
                          SizedBox(
                            height: Get.height * 0.025,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Resend OTP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
