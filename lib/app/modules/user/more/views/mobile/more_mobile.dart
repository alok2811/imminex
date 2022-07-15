import 'package:flutter/material.dart';
import 'package:imminex/app/modules/user/more/controllers/more_controller.dart';
import 'package:imminex/base/colors.dart';
import 'package:get/get.dart';

class MoreMobile extends StatelessWidget {
  final MoreController controller = Get.put(MoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/Profile.png"), color: appBlueColor,),
            title: Text("Profile"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/payment.png"), color: appBlueColor,),
            title: Text("Subscription and payment"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/Star.png"), color: appBlueColor,),
            title: Text("Testimonials"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/about_us.png"), color: appBlueColor,),
            title: Text("About us"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/Call.png"), color: appBlueColor,),
            title: Text("Contact Us"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/Shield-Done.png"), color: appBlueColor,),
            title: Text("Privacy Policy"),
          ),
          ListTile(
            onTap: (){},
            leading: ImageIcon(AssetImage("assets/icons/Terms_condition.png"), color: appBlueColor,),
            title: Text("Terms and conditions"),
          ),
          ListTile(
            onTap: ()=> controller.logoutPopup(),
            leading: ImageIcon(AssetImage("assets/icons/Logout.png"), color: appBlueColor,),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
