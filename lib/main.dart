// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:metal_health/pages/main_pages/analysis.dart';
import 'package:metal_health/pages/diagnosis_pages/depression.dart';
import 'package:metal_health/pages/main_pages/login.dart';
import 'package:metal_health/pages/main_pages/questionnaire.dart';
import 'package:metal_health/pages/main_pages/home_page.dart';
import 'package:metal_health/pages/main_pages/patient_form.dart';
import 'package:metal_health/pages/main_pages/settings.dart';
import 'package:metal_health/pages/main_pages/dashboard.dart';
import 'package:metal_health/pages/main_pages/signup.dart';

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
