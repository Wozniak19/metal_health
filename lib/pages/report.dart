import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MhdPieChart extends StatelessWidget {
  final Map<String, double> dataMap;

  MhdPieChart({required this.dataMap});

  @override
  Widget build(BuildContext context) {
    final double total = dataMap.values.fold(0, (sum, item) => sum + item);

    List<PieChartSectionData> sections = [];
    int index = 0;

    final List<Color> colorList = [
      Colors.blue.shade400,
      Colors.red.shade400,
      Colors.green.shade400,
      Colors.orange.shade400,
      Colors.purple.shade400,
      Colors.yellow.shade700,
      Colors.cyan.shade400,
      Colors.grey.shade400,
    ];

    dataMap.forEach((key, value) {
      final double percentage = (value / total) * 100;
      sections.add(
        PieChartSectionData(
          color: colorList[index % colorList.length],
          value: value,
          title: '${percentage.toStringAsFixed(1)}%',
          radius: 160,
          titleStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
      index++;
    });

    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Mental Health Disorders Distribution',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: PieChart(
                  PieChartData(
                    sections: sections,
                    centerSpaceRadius: 5,
                    sectionsSpace: 2,
                    borderData: FlBorderData(show: false),
                  ),
                  swapAnimationDuration: Duration(milliseconds: 800),
                  swapAnimationCurve: Curves.easeInOut,
                ),
              ),
              const SizedBox(height: 16),
              // Legend
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: dataMap.keys.map((key) {
                  final int idx = dataMap.keys.toList().indexOf(key);
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: colorList[idx % colorList.length],
                      ),
                      const SizedBox(width: 4),
                      Text(key),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
