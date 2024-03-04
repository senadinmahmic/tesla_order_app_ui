import 'package:get/get.dart';

import 'package:tesla_order_app_ui/modules/summary/controllers/summary_controller.dart';

class SummaryBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SummaryController>(() => SummaryController());
  }
}
