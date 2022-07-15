import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:imminex/app/modules/user/verifiactionPage/views/web/otp_view.dart';

import 'package:imminex/helper/responsive_view.dart';


import '../controllers/verifiaction_page_controller.dart';
import 'mobile/verfication_page_mobile.dart';

class VerifiactionPageView extends GetView<VerifiactionPageController> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body:  ResponsiveView(
      desktop: WebOTPview(),
      mobile: VerificationPageMobile(),
      tablet: WebOTPview(),

    )
    );

  }
}
