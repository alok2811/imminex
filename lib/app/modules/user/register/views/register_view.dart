import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/register/views/web/web_agent_register_view.dart';
import 'package:imminex/helper/responsive_view.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body:  ResponsiveView(
      desktop: WebAgentRegisterView(),
      mobile: Container(),
      tablet: WebAgentRegisterView(),

    )
    );
  }
}
