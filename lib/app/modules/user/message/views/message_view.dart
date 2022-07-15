import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:imminex/app/modules/user/message/views/mobile/message_mobile.dart';
import 'package:imminex/helper/responsive_view.dart';

import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(mobile: MessageMobile(), tablet: Container(), desktop: Container());
  }
}
