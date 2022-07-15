import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/home_controller.dart';
import 'mobile/home_mobile.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: HomeMobile(), tablet: Container(), desktop: Container());
  }
}
