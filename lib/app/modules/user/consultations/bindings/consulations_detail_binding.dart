import 'package:get/get.dart';

import '../controllers/consultations_controller.dart';

class ConsultationsDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConsultationsController>(
          () => ConsultationsController(),
    );
  }
}
