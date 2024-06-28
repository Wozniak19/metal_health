// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:metal_health/pages/main_pages/allpages.dart';

void main() {
  runApp(const MentalHealth());
}

class MentalHealth extends StatefulWidget {
  const MentalHealth({super.key});

  @override
  State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  // final List<Widget> _pages = [
  //   Dashboard(),
  //   Questionnaire(),
  //   Patient(),
  //   Analysis(),
  //   Settings(),
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Dashboard(),
        backgroundColor: Colors.white,
      ),
      routes: {
        '/dashboardpage': (context) => Dashboard(),
        '/homepage': (context) => HomePage(),
        '/questionnairepage': (context) => Questionnaire(),
        '/patientpage': (context) => Patient(),
        '/analysispage': (context) => Analysis(),
        '/settingspage': (context) => Settings(),
        '/depressionpage': (context) => Depression(),
      },
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
