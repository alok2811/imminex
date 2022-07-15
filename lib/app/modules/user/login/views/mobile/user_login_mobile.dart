import 'package:flutter/material.dart';
import 'package:imminex/app/modules/user/login/controllers/login_controller.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/base/colors.dart';
import 'package:get/get.dart';
import 'package:imminex/base/enums.dart';
import 'package:imminex/widgets/circle_social_button.dart';
import 'package:imminex/widgets/custom_country_picker.dart';
import 'package:imminex/widgets/text_input_field.dart';


class UserLoginMobile extends StatelessWidget {
  final LoginController controller = Get.find();
  static TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Text("Sign in to your user account", style: TextStyle(color: appBlackColor, fontSize: 20, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
            SizedBox(height: 20,),

            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ),
                SizedBox()
              ],
            )),
            SizedBox(height: 20,),
            Obx(() =>
        Visibility(
          visible: controller.via.value == UserLoginEnum.phone,
          child: TextInputField(
            controller: editController,
            keyboardType: TextInputType.phone,
            hintText: "Phone",
            prefix: CustomCountryCodePicker(onSelectCountry: controller.onSelectCountry, selectedCountryCode: controller.selectedCountryCode.value),
          ),
        )),
            Obx(() =>
                Visibility(
                  visible: controller.via.value == UserLoginEnum.email,
                  child: TextInputField(
                    controller: editController,
                    hintText: "Email",
                    prefix: Icon(Icons.email),
                    keyboardType: TextInputType.emailAddress,
                  ),
                )),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){}, child: Text("LOGIN")),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(padding: EdgeInsets.only(left: 10,right: 10), child: Text("Or"),),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Get.offAndToNamed(Routes.VERIFIACTION_PAGE);
            }, child: Text("LOGIN AS GUEST"), style: ElevatedButton.styleFrom(primary: appBlueColor),),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularSocialButton(icon: ImageIcon(
                  AssetImage("assets/icons/facebook.png",),
                  color: Color(0xff3B5999),
                ), borderColor: Color(0xff3B5999), onPressed: (){}),
                SizedBox(width: 10,),
                CircularSocialButton(icon: ImageIcon(
                AssetImage("assets/icons/twitter.png"),
                  color: Color(0xff55ACEE),
    ), borderColor: Color(0xff55ACEE), onPressed: (){}),
                SizedBox(width: 10,),
                CircularSocialButton(icon: ImageIcon(
    AssetImage("assets/icons/google.png"),
                  color: Color(0xffDD4839),
    ), borderColor: Color(0xffDD4839), onPressed: (){}),

              ],
            )


          ],
        ),
      ),
    );
  }
}
