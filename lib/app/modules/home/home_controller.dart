import 'package:get/get.dart';

import '../../../app/models/variation_model.dart';
import '../../routes/app_routes.dart';
import 'home_provider.dart';

class HomeController extends GetxController {
  final HomeProvider provider = HomeProvider();
  VariationModel? variation;

  @override
  void onInit() {
    fetchVariation();
    super.onInit();
  }

  Future<void> fetchVariation() async {
    variation = await provider.findVariation();
  }

  void goToList() {
    Get.toNamed(Routes.variationList, arguments: variation);
  }

  void goToChart() {
    Get.toNamed(Routes.variationChart, arguments: variation);
  }
}
