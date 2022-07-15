import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/notification/views/mobile/notification_mobile.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: NotificationMobile(), tablet: Container(), desktop: Container());
  }
}
