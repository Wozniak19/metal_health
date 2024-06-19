// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:metal_health/pages/diagnosis_pages/acute_and_transient.dart';
import 'package:metal_health/pages/diagnosis_pages/anxiety.dart';
import 'package:metal_health/pages/diagnosis_pages/bipolar_disorder.dart';
import 'package:metal_health/pages/diagnosis_pages/delusional_disorder.dart';
import 'package:metal_health/pages/diagnosis_pages/depression.dart';
import 'package:metal_health/pages/diagnosis_pages/gambling.dart';
import 'package:metal_health/pages/diagnosis_pages/ocd.dart';
import 'package:metal_health/pages/diagnosis_pages/ptsd.dart';
import 'package:metal_health/pages/diagnosis_pages/schizophrenia.dart';
import 'package:metal_health/pages/diagnosis_pages/substance_use_and_abuse.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({super.key});

  @override
  State<Questionnaire> createState() => _ReportState();
}

class _ReportState extends State<Questionnaire> {
  // Define a list of titles for the cards
  final List<String> cardTitles = [
    'Depression',
    'Schizophrenia',
    'Acute and transient disorder',
    'Delusional Disorder',
    'Bipolar disorder',
    'Anxiety',
    'OCD',
    'PTSD',
    'Gambling Disorder',
    'Substance Use And Abuse',
  ];

  // Define a list of routes or destination pages corresponding to each card title
  final List<Widget Function()> destinationPages = [
    () => Depression(),
    () => Schizophrenia(),
    () => AcuteTransient(),
    () => DelusionalDisorder(),
    () => Bipolar(),
    () => Anxiety(),
    () => OCD(),
    () => PTSD(),
    () => Gambling(),
    () => SubstanceUseAndAbuse(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
          title: Text(
            'Questionnaire Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2, // Adjust the number of columns as needed
          children: List.generate(
            cardTitles.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  // Handle card tap, navigate to the corresponding questionnaire page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => destinationPages[index](),
                    ),
                  );
                },
                child: Card(
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Text(cardTitles[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
