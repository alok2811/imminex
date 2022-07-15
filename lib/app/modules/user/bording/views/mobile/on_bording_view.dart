import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/base/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingView extends StatelessWidget {
  final PageController pageController = PageController();
  final  currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: [
            Expanded(
              flex: 5,
                child:PageView(
              controller: pageController,
              onPageChanged: (index){
                currentIndex.value = index;
              },
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Expanded(child: Image.asset('assets/mobile/on-boarding1.png')),
                    SizedBox(height: 20,),
                    Text("Get Free Consultation", style: TextStyle(fontWeight: FontWeight.w600, color: appBlackColor, fontSize: 22),),
                    SizedBox(height: 10,),
                    Text("Chat with our representative 24x7", style: TextStyle(fontWeight: FontWeight.w400, color: appGreyColor, fontSize: 18),),
                    SizedBox(height: 10,),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('assets/mobile/on-boarding1.png')),
                    SizedBox(height: 20,),
                    Text("Connect with Authorized", style: TextStyle(fontWeight: FontWeight.w600, color: appBlackColor, fontSize: 22),),
                    SizedBox(height: 10,),
                    Text("Quick to post your request and get connected with agents", style: TextStyle(fontWeight: FontWeight.w400, color: appGreyColor, fontSize: 18),textAlign: TextAlign.center,),
                    SizedBox(height: 10,),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('assets/mobile/on-boarding2.png')),
                    SizedBox(height: 20,),
                    Text("All about visas", style: TextStyle(fontWeight: FontWeight.w600, color: appBlackColor, fontSize: 22),),
                    SizedBox(height: 10,),
                    Text("Get information about all types of visas in your plan", style: TextStyle(fontWeight: FontWeight.w400, color: appGreyColor, fontSize: 18),textAlign: TextAlign.center,),
                    SizedBox(height: 10,),
                  ],
                ),
              ],
            )),
            SizedBox(height: 30,),
            SmoothPageIndicator(
                controller: pageController,  // PageController
                count:  3,
                effect:  ExpandingDotsEffect(),  // your preferred effect
                onDotClicked: (index){
                }
            ),

            Obx(() =>Expanded(
              flex: 1,
              child:currentIndex.value !=2  ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: OutlinedButton(onPressed: (){}, child: Text("SKIP"),)),
                  SizedBox(width: 10,),
                  Expanded(child: ElevatedButton(onPressed: (){}, child: Text("NEXT"),)),
                ],
              ): Center(
                child: ElevatedButton(onPressed: (){
                  Get.offAllNamed(Routes.DASHBOARD);
                },child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Text("Next"),
                ),),
              ),
            )),

            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
