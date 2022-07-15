import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:imminex/app/modules/user/login/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:imminex/base/colors.dart';
import 'package:imminex/widgets/circle_social_button.dart';
import 'package:imminex/widgets/text_input_field.dart';


class AgentLoginMobile extends StatelessWidget {
  final LoginController controller = Get.find();

  final emailController = TextEditingController();
  final passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Text("Sign in to your agent account", style: TextStyle(color: appBlackColor, fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
            SizedBox(height: 20,),

                TextInputField(
                  controller: emailController,
                  hintText: "Email",
                  prefix: Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                ),
            SizedBox(height: 20,),

           Obx (()=>TextInputField(
              controller: passController,
              hintText: "Password",
              obscureText: controller.obscureText.value,
              prefix: Icon(Icons.lock),
              suffix: TextButton(onPressed: (){
                controller.obscureText.value = ! controller.obscureText.value;
              }, child: Text("SHOW", style: TextStyle(color: appBlackColor, fontWeight: FontWeight.w600),),),
              keyboardType: TextInputType.visiblePassword,
            )),

            SizedBox(height: 20,),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              text: "Forgot your password? ",
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(text: " Reset here ", style: TextStyle(color: appPrimaryColor, fontWeight: FontWeight.w600),
                    recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                  )
                ]
            ),),
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

            ElevatedButton(onPressed: (){}, child: Text("LOGIN AS GUEST"), style: ElevatedButton.styleFrom(primary: appBlueColor),),

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
