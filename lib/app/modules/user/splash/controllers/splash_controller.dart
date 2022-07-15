import 'package:get/get.dart';
import 'package:imminex/app/routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3), () => Get.offAllNamed(Routes.LOGIN));
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    
  }

  @override
  void onClose() {
    super.onClose();
  }
}
