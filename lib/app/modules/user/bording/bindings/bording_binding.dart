import 'package:get/get.dart';

import '../controllers/bording_controller.dart';

class BordingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BordingController>(
      () => BordingController(),
    );
  }
}
