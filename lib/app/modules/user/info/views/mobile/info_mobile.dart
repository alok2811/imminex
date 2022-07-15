import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';
import 'package:imminex/base/colors.dart';

class InfoMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
        actions: [
          IconButton(onPressed: (){
            Get.toNamed(Routes.NOTIFICATION);
          }, icon: Icon(Icons.notifications_none, color: appBlackColor,)),
        ],
      ),
      body: GridView.count(
        primary: false,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: appRedInfo,
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/vissa.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Visas", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appGreenInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),

            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/calculator.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Points\nCalculator", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appYellowInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/authorised.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Authorised\nAgents", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appBlueInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/language_center.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Language\nCenter", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appBrownInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/trands.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Trends", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appTeleInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/youtube.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("Youtube\nVideos", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

          Card(
            color: appBlueVioletInfo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/icons/news.png"), color: appWhiteColor, size: 60,),
                  SizedBox(height: 10,),
                  Text("News", style: TextStyle(color: appWhiteColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
