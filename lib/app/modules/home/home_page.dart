import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/modules/home/home_controller.dart';
import '../../../app/theme/app_colors.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [AppColors.primary, AppColors.secondary],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 60),
                  child: Text(
                    'Variação do ativo:\n PETR4.SA',
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  ),
                ),
                Card(
                  child: ListTile(
                    title: const Text('Exibir em lista'),
                    leading: const Icon(Icons.list),
                    onTap: controller.goToList,
                  ),
                ),
                Card(
                  child: ListTile(
                    title: const Text('Exibir gráfico'),
                    leading: const Icon(Icons.timeline),
                    onTap: controller.goToChart,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//ADNROID
  // Widget build(BuildContext context) {
  //   // This is used in the platform side to register the view.
  //   const String viewType = '<platform-view-type>';
  //   // Pass parameters to the platform side.
  //   const Map<String, dynamic> creationParams = <String, dynamic>{};

  //   return PlatformViewLink(
  //     viewType: viewType,
  //     surfaceFactory: (context, controller) {
  //       return AndroidViewSurface(
  //         controller: controller as AndroidViewController,
  //         gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
  //         hitTestBehavior: PlatformViewHitTestBehavior.opaque,
  //       );
  //     },
  //     onCreatePlatformView: (params) {
  //       return PlatformViewsService.initSurfaceAndroidView(
  //         id: params.id,
  //         viewType: viewType,
  //         layoutDirection: TextDirection.ltr,
  //         creationParams: creationParams,
  //         creationParamsCodec: const StandardMessageCodec(),
  //         onFocus: () {
  //           params.onFocusChanged(true);
  //         },
  //       )
  //         ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
  //         ..create();
  //     },
  //   );
  // }

}
