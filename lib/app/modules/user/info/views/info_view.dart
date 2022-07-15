import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/info/views/mobile/info_mobile.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
        desktop: Text(
          'InfoView is working',
          style: TextStyle(fontSize: 20),
        ),
        mobile: InfoMobile(),
        tablet: Text(
          'InfoView is working',
          style: TextStyle(fontSize: 20),
        ),
    );
  }
}
