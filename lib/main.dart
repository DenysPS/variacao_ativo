import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
import 'app/theme/app_colors.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Variação de Ativo',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: AppColors.generateMaterialColorFromColor(),
        fontFamily: 'Roboto',
      ),
    ),
  );
}
