import 'package:get/get.dart';

import '../modules/chart/chart_bindings.dart';
import '../modules/chart/chart_page.dart';
import '../modules/home/home_bindings.dart';
import '../modules/home/home_page.dart';
import '../modules/list/list_bindings.dart';
import '../modules/list/list_page.dart';
import 'app_routes.dart';

class AppPages {
  static const home = Routes.home;
  static const chart = Routes.variationChart;
  static const list = Routes.variationList;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.variationChart,
      page: () => ChartPage(),
      binding: ChartBindings(),
    ),
    GetPage(
      name: Routes.variationList,
      page: () => const ListPage(),
      binding: ListBindings(),
    ),
  ];
}
