import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/modules/user/verifiactionPage/controllers/verifiaction_page_controller.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/widgets/circle_text_field.dart';
import 'package:imminex/widgets/rounded_button.dart';


class VerificationPageMobile extends StatelessWidget {
  final VerifiactionPageController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Code"),
      ),
    body: Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30,),
          Text("Verify With Your Phone Number", style: TextStyle(fontSize: 20,), textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleTextField(text: "1",),
              SizedBox(width: 10,),
              CircleTextField(text: "2",),
              SizedBox(width: 10,),
              CircleTextField(text: "",),
              SizedBox(width: 10,),
              CircleTextField(text: "",),
            ],
          ),
          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(text: "1", onTap: (){}),
              RoundedButton(text: "2", onTap: (){}),
              RoundedButton(text: "3", onTap: (){}),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(text: "4", onTap: (){}),
              RoundedButton(text: "5", onTap: (){}),
              RoundedButton(text: "6", onTap: (){}),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(text: "7", onTap: (){}),
              RoundedButton(text: "8", onTap: (){}),
              RoundedButton(text: "9", onTap: (){}),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedButton(text: "", onTap: (){}),
              RoundedButton(text: "0", onTap: (){}),
              RoundedButton(text: "X", onTap: (){}),
            ],
          ),
          SizedBox(height: 30,),

          ElevatedButton(onPressed: (){
            Get.offNamed(Routes.BORDING);
          }, child: Text("SUBMIT"))

        ],
      ),
    ),
    );

  }
}
