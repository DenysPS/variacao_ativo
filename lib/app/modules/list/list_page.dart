import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/modules/list/components/tile_widget.dart';
import '../../../app/modules/list/list_controller.dart';

class ListPage extends GetView<ListController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.data = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(controller.data.symbol)),
      body: ListView.builder(
          itemCount: controller.data.days.length,
          itemBuilder: (_, i) {
            return TileWidget(day: controller.data.days[i]);
          }),
    );
  }
}
