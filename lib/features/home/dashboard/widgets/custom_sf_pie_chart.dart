import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../data/models/pie_data_model.dart';

class CustomSfPieChart extends StatefulWidget {
  const CustomSfPieChart(
      {super.key, required this.pieData, required this.isFirst});
  final List<PieData> pieData;
  final bool isFirst;

  @override
  State<CustomSfPieChart> createState() => _CustomSfPieChartState();
}

class _CustomSfPieChartState extends State<CustomSfPieChart> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      palette: widget.isFirst == true
          ? const <Color>[
              Color.fromRGBO(75, 135, 185, 1),
              Color.fromRGBO(192, 108, 132, 1),
              Color.fromRGBO(246, 114, 128, 1),
              Color.fromRGBO(248, 177, 149, 1),
              Color.fromRGBO(116, 180, 155, 1),
              Color.fromRGBO(0, 168, 181, 1),
              Color.fromRGBO(73, 76, 162, 1),
              Color.fromRGBO(255, 205, 96, 1),
            ]
          : const <Color>[
              Color.fromRGBO(75, 185, 135, 1),
              Color.fromRGBO(192, 188, 108, 1),
              Color.fromRGBO(246, 114, 128, 1),
              Color.fromRGBO(248, 177, 149, 1),
              Color.fromRGBO(56, 94, 166, 1),
              Color.fromRGBO(0, 168, 181, 1),
              Color.fromRGBO(73, 76, 162, 1),
              Color.fromRGBO(255, 205, 96, 1),
            ],
      legend: Legend(isVisible: true),
      series: <PieSeries<PieData, String>>[
        PieSeries<PieData, String>(
            explode: true,
            explodeIndex: 0,
            dataSource: widget.pieData,
            xValueMapper: (PieData data, _) => data.xData,
            yValueMapper: (PieData data, _) => data.yData,
            dataLabelMapper: (PieData data, _) => data.text,
            dataLabelSettings: const DataLabelSettings(isVisible: true)),
      ],
      margin: EdgeInsets.zero,
    );
  }
}
