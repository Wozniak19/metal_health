// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:metal_health/bargraph/bar_graph.dart';

class Analysis extends StatelessWidget {
  Analysis({super.key});
  List<double> weeklySummary = [405, 203, 110, 190, 267, 178, 388];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
          title: Text(
            'Analysis Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            child: BarGraph(weeklySummary: weeklySummary),
          ),
        ),
      ),
    );
  }
}
