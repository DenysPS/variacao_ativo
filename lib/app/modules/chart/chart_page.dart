import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_colors.dart';
import 'chart_controller.dart';

class ChartPage extends GetView<ChartController> {
  ChartPage({super.key});

  LineChartData _buildChart() {
    final List<FlSpot> var1 = [];
    final List<FlSpot> varInit = [];
    for (var day in controller.data.days) {
      var1.add(FlSpot(day.id.toDouble(), day.variationD1 ?? 0.0));
      varInit.add(FlSpot(day.id.toDouble(), day.variationInit ?? 0.0));
    }
    return LineChartData(
      titlesData: FlTitlesData(
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      lineBarsData: [
        LineChartBarData(spots: var1, color: AppColors.amber),
        LineChartBarData(spots: varInit, color: AppColors.deepOrange),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    controller.data = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: const Text('Gráfico')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: LineChart(
                  _buildChart(),
                ),
              ),
            ),
            Container(
              height: 40,
              child: Column(
                children: const [
                  Text(
                    'Variação D-1',
                    style: TextStyle(
                      color: AppColors.amber,
                      shadows: [Shadow(offset: Offset(1, 1), color: AppColors.grey)],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Variação Inicial',
                    style: TextStyle(
                      color: AppColors.deepOrange,
                      shadows: [Shadow(offset: Offset(1, 1), color: AppColors.grey)],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
