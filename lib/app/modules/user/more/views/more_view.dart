import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/more/views/web/web_more_view.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/more_controller.dart';
import 'mobile/more_mobile.dart';

class MoreView extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
        mobile: MoreMobile(), tablet: WebMoreView(), desktop: WebMoreView());
  }
}
