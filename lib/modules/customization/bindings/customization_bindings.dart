import 'package:get/get.dart';

import '../controllers/customization_controller.dart';

class CustomizationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomizationController>(() => CustomizationController());
  }
}
