import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:imminex/base/colors.dart';
import 'package:imminex/widgets/custom_country_picker.dart';

import '../../../login/controllers/login_controller.dart';

class HomeMobile extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Obx(() => CustomCountryCodePicker(onSelectCountry: loginController.onSelectCountry, selectedCountryCode: loginController.selectedCountryCode.value, showCode: false,)),
        title: Text('immiNex'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.g_translate)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ImageSlideshow(
                autoPlayInterval: 5000,
                isLoop: true,
                children: [
                  Image.asset("assets/mobile/card_view.png"),
                  Image.asset("assets/mobile/card_view.png"),
                  Image.asset("assets/mobile/card_view.png"),
                  Image.asset("assets/mobile/card_view.png"),
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: appGreyColor,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/icons/chat_us_light.png', fit: BoxFit.cover,),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          maxLines: 2,
                          text: TextSpan(
                              style: TextStyle(
                                  color: appBlackColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300
                              ),
                              children:[
                                TextSpan(text: "Free "),
                                TextSpan(text: "Consultation\n", style: TextStyle(fontWeight: FontWeight.w600,  fontSize: 26,)),
                                TextSpan(text:"Terms and Conditions",  style: TextStyle(fontSize: 16,color: appGreyColor))
                              ]
                          )),
                      SizedBox(height: 15,),
                      ElevatedButton(onPressed: (){}, child: Text("Start Now", style: TextStyle(color: appWhiteColor),), style: ElevatedButton.styleFrom(primary: appBlueColor),)
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
