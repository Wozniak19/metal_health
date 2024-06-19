import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:metal_health/bargraph/bardata.dart';

class BarGraph extends StatelessWidget {
  final List weeklySummary;
  const BarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      am1: weeklySummary[0],
      am2: weeklySummary[1],
      am3: weeklySummary[2],
      am4: weeklySummary[3],
      am5: weeklySummary[4],
      am6: weeklySummary[5],
      am7: weeklySummary[6],
    );
    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 500,
        minY: 0,
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    BarChartRodData(
                        toY: data.y,
                        color: Colors.purple[800],
                        width: 20,
                        borderRadius: BorderRadius.circular(4),
                        backDrawRodData: BackgroundBarChartRodData(
                            show: true, toY: 500, color: Colors.red[200]))
                  ],
                ))
            .toList(),
      ),
    );
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14);

    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Depression', style: style);
        break;

      case 1:
        text = const Text('Schizo', style: style);
        break;
      case 2:
        text = const Text('PTSD', style: style);
        break;
      case 3:
        text = const Text('OCD', style: style);
        break;
      case 4:
        text = const Text('Bipolar', style: style);
        break;
      case 5:
        text = const Text('\t\tAnxiety', style: style);
        break;
      case 6:
        text = const Text('\t\tAcute', style: style);
        break;

      default:
        text = const Text('\tPanic', style: style);
        break;
    }
    return SideTitleWidget(axisSide: meta.axisSide, child: text);
  }
}
