import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';

import '../../../../../helper/responsive_view.dart';
import '../controllers/consultations_controller.dart';
import 'mobile/consultations_mobile.dart';

class ConsultationsView extends GetView<ConsultationsController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: ConsultationsMobile(), tablet: Container(), desktop: Container());
  }
}
//

// Get.toNamed(Routes.CONSULTATIONS_DETAIL);