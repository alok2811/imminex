import 'package:flutter/material.dart';
import 'package:imminex/app/modules/user/dashboard/controllers/dashboard_controller.dart';
import 'package:imminex/base/colors.dart';
import 'package:get/get.dart';

class DashboardMobile extends StatelessWidget {
  final DashboardController controller = Get.find();
  @override
  Widget build(BuildContext context) {

    return Obx(() =>Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        currentIndex: controller.selectedIndex.value,
        showUnselectedLabels: true,
        selectedItemColor: appPrimaryColor,
        unselectedItemColor: appGreyColor,
        selectedFontSize: 12,
        onTap: (index) => controller.onItemTapped(index),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/home.png")
            ),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/icons/message.png")
            ),
            label: 'Message',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/icons/consultations.png")
            ),
            label: 'Consultations',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/icons/info.png")
            ),
            label: 'Info',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/icons/more.png")
            ),
            label: 'More',
          ),
        ],
      ),
      body: Center(
        child: controller.widgetOptions.elementAt(controller.selectedIndex.value),
      ),
    ));

  }
}
