import 'package:get/get.dart';

import 'chart_controller.dart';

class ChartBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ChartController());
  }
}
