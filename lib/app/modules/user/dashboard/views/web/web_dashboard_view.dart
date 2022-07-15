import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:imminex/app/modules/user/consultations/views/consultations_view.dart';
import 'package:imminex/app/modules/user/dashboard/views/web/side_navigation_bar.dart';

import '../../models/side_navigation_item.dart';
import '../../../home/views/home_view.dart';
import '../../../info/views/info_view.dart';
import '../../../message/views/message_view.dart';
import '../../../more/views/more_view.dart';
import '../../controllers/dashboard_controller.dart';

class WebDashboardView extends StatelessWidget {
  const WebDashboardView({Key? key}) : super(key: key);
  static DashboardController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Row(
          children: [
            SideNavigationBar(
              iconSize: 30,
              lableFontSize: 13,
              selectedIndex: controller.selectedIndex.value,
              onChanged: (int value) => controller.selectedIndex.value = value,
              items: [
                SideNavigationItem(lable: 'immiNex'),
                SideNavigationItem(
                    icon: "assets/icons/message.png", lable: 'Messages'),
                SideNavigationItem(
                    icon: "assets/icons/consultations.png",
                    lable: 'Consultations'),
                SideNavigationItem(
                    icon: "assets/icons/info.png", lable: 'Info'),
                SideNavigationItem(
                    icon: "assets/icons/more.png", lable: 'More'),
              ],
            ),
            Expanded(
                child: controller.selectedIndex.value == 0
                    ? HomeView()
                    : controller.selectedIndex.value == 1
                        ? MessageView()
                        : controller.selectedIndex.value == 2
                            ? ConsultationsView()
                            : controller.selectedIndex.value == 3
                                ? InfoView()
                                : MoreView()),
          ],
        );
      }),
    );
  }
}
