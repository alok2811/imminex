import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/base/enums.dart';
import 'package:imminex/helper/app_screen_resize.dart';
import 'package:imminex/widgets/circle_social_button.dart';
import 'package:imminex/widgets/custom_country_picker.dart';
import 'package:imminex/widgets/text_input_field.dart';

import '../../controllers/login_controller.dart';

class UserLoginView extends StatelessWidget {
  const UserLoginView({
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
            "Sign in to your user account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Radio<UserLoginEnum?>(
                      value: UserLoginEnum.email,
                      groupValue: controller.via.value,
                      onChanged: controller.onRadioButtonChanged),
                  Text("Email")
                ],
              ),
              Row(
                children: [
                  Radio<UserLoginEnum?>(
                      value: UserLoginEnum.phone,
                      groupValue: controller.via.value,
                      onChanged: controller.onRadioButtonChanged),
                  Text("Phone Number")
                ],
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          if (controller.via.value == UserLoginEnum.email) ...[
            TextInputField(
              hintText: 'Email',
              controller: controller.emailController.value,
            )
          ] else ...[
            TextInputField(
              hintText: 'Phone',
              controller: controller.phoneController.value,
              prefix: CustomCountryCodePicker(
                  onSelectCountry: controller.onSelectCountry,
                  selectedCountryCode: controller.selectedCountryCode.value),
            )
          ],
          SizedBox(
            height: Get.height * 0.01,
          ),
          SizedBox(
              width: Get.width, 
              height: Get.height * 0.05,
              child: ElevatedButton(onPressed: () {
                Get.toNamed(Routes.VERIFIACTION_PAGE);
              }, child: Text('LOGIN'))),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: AppScreenResize.webAuthDividerWidth,
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
                icon:Image.asset("assets/icons/facebook.png",  height: 15,width: 15,),
                onPressed: () {},
              ),
              SizedBox(
                width: 10,
              ),
              CircularSocialButton(
                backGroundColor: Colors.white,
                onPressed: () {},
                   icon:Image.asset("assets/icons/twitter.png", height: 15,width: 15,),
                borderColor: Color(0xFF55ACEE),
              ),
              SizedBox(
                width: 10,
              ),
              CircularSocialButton(
                backGroundColor: Colors.white,
                onPressed: () {},
                  icon:Image.asset("assets/icons/google.png", height: 15,width: 15,),
                borderColor: Color(0xffd32129),
              )
            ],
          )
        ],
      );
    });
  }
}
