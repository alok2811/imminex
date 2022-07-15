import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/modules/user/login/views/web/agent_login_view.dart';
import 'package:imminex/app/modules/user/login/views/web/user_login_view.dart';
import 'package:imminex/helper/app_screen_resize.dart';

import '../../controllers/login_controller.dart';

class LoginWeb extends StatelessWidget {
  const LoginWeb({
    Key? key,
  }) : super(key: key);
  static LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    debugPrint("static width:${Get.width / 2.6}");
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/web/images/login_bg.png"),
              fit: BoxFit.cover)),
      child: Obx(() {
        return SizedBox(
          // height: Get.height / 1.8,
          width: AppScreenResize.webAuthCardWidth,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(40),
              // const EdgeInsets.only(left: 40, right: 40, top: 35),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DefaultTabController(
                    length: 2,
                    child: TabBar(
                        onTap: controller.onWebLoginChangedTab,
                        indicatorColor: Color(0xff2054A4),
                        labelColor: Color(0xff2054A4),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Text("USER"),
                          Text("AGENT"),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (controller.tabIndex.value == 0) ...[
                    UserLoginView()
                  ] else ...[
                    AgentLoginView()
                  ]
                ],
              ),
            ),
          ),
        );
      }),
    ));
  }
}
