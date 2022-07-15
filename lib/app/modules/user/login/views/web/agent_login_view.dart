import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/helper/app_screen_resize.dart';
import 'package:imminex/widgets/circle_social_button.dart';
import 'package:imminex/widgets/custom_country_picker.dart';
import 'package:imminex/widgets/text_input_field.dart';

import '../../controllers/login_controller.dart';

class AgentLoginView extends StatelessWidget {
  const AgentLoginView({
    Key? key,
  }) : super(key: key);

  static LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            "Sign in to your agent account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          TextInputField(
            hintText: 'Phone',
            controller: controller.agentPhoneController.value,
            prefix: CustomCountryCodePicker(
                onSelectCountry: controller.onSelectAgentCountry,
                selectedCountryCode: controller.selectedAgentCountryCode.value),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          TextInputField(
            obscureText: controller.agentPasswrdObsecure.value,
            hintText: 'Password',
            controller: controller.agentPasswordController.value,
            contentPadding: const EdgeInsets.all(8),
            suffix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                      onTap: () => controller.onObsecureText(),
                      child: Text(
                        "SHOW",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          SizedBox(
              width: Get.width,
              height: Get.height * 0.05,
              child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.WEB_AGENT_REGISTER_VIEW),
                  child: Text('LOGIN'))),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width:AppScreenResize.webAuthDividerWidth,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                width: 8,
              ),
              Text("Or"),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 1,
                width: AppScreenResize.webAuthDividerWidth,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          SizedBox(
              width: Get.width,
              height: Get.height * 0.05,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xFF184A96)),
                  onPressed: () {},
                  child: Text('LOGIN AS GUEST'))),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularSocialButton(
                backGroundColor: Colors.white,
                borderColor: Color(0xFF184A96),
                icon: Image.asset(
                  "assets/icons/facebook.png",
                  height: 15,
                  width: 15,
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              CircularSocialButton(
                backGroundColor: Colors.white,
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/twitter.png",
                  height: 15,
                  width: 15,
                ),
                borderColor: Color(0xFF55ACEE),
              ),
              SizedBox(
                width: 10,
              ),
              CircularSocialButton(
                backGroundColor: Colors.white,
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/google.png",
                  height: 15,
                  width: 15,
                ),
                borderColor: Color(0xffd32129),
              )
            ],
          )
        ],
      );
    });
  }
}
