import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CircularGraph extends StatelessWidget {
  CircularGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          RepaintBoundary(
            child: PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: 80,
              colorList: colorList,
              initialAngleInDegree: 0,
              baseChartColor: Colors.grey,
              totalValue: 100,
              chartType: ChartType.ring,
              ringStrokeWidth: 20,
              legendOptions: const LegendOptions(showLegends: false),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: false,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
            ),
          ),
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Text("42 %"),
          )
        ],
      ),
    );
  }

  final dataMap = <String, double>{
    "Completed": 42,
  };

  final colorList = <Color>[
    Colors.orange,
  ];
}
