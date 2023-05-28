import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({
    super.key,
    required this.dataMap,
    required this.colorList,
  });
  final Map<String, double> dataMap;
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      chartRadius: 300.0,
      animationDuration: const Duration(seconds: 3),
      chartType: ChartType.disc,
      ringStrokeWidth: 50.0,
      colorList: colorList,
      legendOptions: const LegendOptions(
        legendPosition: LegendPosition.bottom,
        showLegends: true,
      ),
      initialAngleInDegree: -90.0,
      chartValuesOptions: const ChartValuesOptions(
          decimalPlaces: 0,
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesOutside: true,
          showChartValuesInPercentage: false),
    );
  }
}
