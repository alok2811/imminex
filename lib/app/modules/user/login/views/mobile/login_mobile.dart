import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/modules/user/login/controllers/login_controller.dart';
import 'package:imminex/app/modules/user/login/views/mobile/agent_login_mobile.dart';
import 'package:imminex/app/modules/user/login/views/mobile/user_login_mobile.dart';
import 'package:imminex/base/colors.dart';

class LoginMobile extends StatelessWidget {
    final LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text("immiNex", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32, color: appBlackColor),),
              SizedBox(height: 10,),
              TabBar(
                labelColor: appBlueColor,
                indicatorColor: appBlueColor,
                unselectedLabelColor: appGreyColor,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                tabs: [
                  Tab(
                    text: "USER",
                  ),
                  Tab(
                    text: "AGENT",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                   UserLoginMobile(),
                    AgentLoginMobile(),

                  ],

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
