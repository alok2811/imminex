import 'package:get/get.dart';

import '../controllers/verifiaction_page_controller.dart';

class VerifiactionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifiactionPageController>(
      () => VerifiactionPageController(),
    );
  }
}
