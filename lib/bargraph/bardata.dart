import 'package:metal_health/bargraph/individualbar.dart';

class BarData {
  final double am1;
  final double am2;
  final double am3;
  final double am4;
  final double am5;
  final double am6;
  final double am7;

  BarData({
    required this.am1,
    required this.am2,
    required this.am3,
    required this.am4,
    required this.am5,
    required this.am6,
    required this.am7,
  });

  List<IndividualBar> barData = [];
  // initialize bardata
  void initializeBarData() {
    barData = [
//amt1
      IndividualBar(x: 1, y: am1),
//amt2
      IndividualBar(x: 2, y: am2),
//amt3
      IndividualBar(x: 3, y: am3),
//amt4
      IndividualBar(x: 4, y: am4),
//amt5
      IndividualBar(x: 5, y: am5),
//amt6
      IndividualBar(x: 6, y: am6),
//amt7
      IndividualBar(x: 7, y: am7),
    ];
  }
}
