import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:imminex/app/modules/user/consultations/views/consultations_view.dart';
import 'package:imminex/app/modules/user/home/views/home_view.dart';
import 'package:imminex/app/modules/user/message/views/message_view.dart';
import 'package:imminex/app/modules/user/info/views/info_view.dart';
import 'package:imminex/app/modules/user/more/views/more_view.dart';


class DashboardController extends GetxController {
  var selectedIndex = 0.obs;

    List<Widget> widgetOptions = <Widget>[
      HomeView(),
      MessageView(),
      ConsultationsView(),
      InfoView(),
      MoreView()
  ];


   void onItemTapped(int index) {
       selectedIndex.value = index;
   }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
