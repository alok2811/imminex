import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/bording_controller.dart';
import 'mobile/on_bording_view.dart';

class BordingView extends GetView<BordingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveView(desktop: Container(), mobile: OnBordingView(), tablet: Container(),)
    );
  }
}
