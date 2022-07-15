import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/login/views/web/login_web.dart';
import 'package:imminex/helper/responsive_view.dart';
import '../controllers/login_controller.dart';
import 'mobile/login_mobile.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  ResponsiveView(
      desktop: LoginWeb(),
      mobile: LoginMobile(),
      tablet: LoginWeb(),

    )
    );
  }
}
