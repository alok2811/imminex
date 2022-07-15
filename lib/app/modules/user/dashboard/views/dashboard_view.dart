import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imminex/app/modules/user/dashboard/views/web/web_dashboard_view.dart';
import 'package:imminex/app/modules/user/dashboard/views/mobile/dashboard_mobile.dart';
import 'package:imminex/helper/responsive_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveView(
      desktop: WebDashboardView(),
      mobile: DashboardMobile(),
      tablet: WebDashboardView(),
    ));
  }
}
