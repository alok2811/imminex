import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:imminex/app/modules/user/consultations/controllers/consultations_detail_controller.dart';
import 'package:imminex/app/modules/user/consultations/views/consultations_detail_mobile_view.dart';

import '../../../../../helper/responsive_view.dart';
import '../../more/views/mobile/more_mobile.dart';
import '../controllers/consultations_controller.dart';

class ConsultationsDetailView extends GetView<ConsultationsDetailController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: ConsultationsDetailMobileView(), tablet: Container(), desktop: Container());
  }
}