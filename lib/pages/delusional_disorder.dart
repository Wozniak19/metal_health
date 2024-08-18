import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class DelusionalDisorder extends StatefulWidget {
  const DelusionalDisorder({super.key});

  @override
  State<DelusionalDisorder> createState() => _DelusionalDisorderState();
}

class _DelusionalDisorderState extends State<DelusionalDisorder> {
  final QuestionBrain delusionalBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Delusions lasting at least 3 months",
          question:
              "29. Have you experienced delusions that have lasted for three months?"),
      Question(
          title: "Absence of schizophrenia symptoms except delusions",
          question:
              "30. Apart from delusions, have you not experienced other symptoms commonly associated with schizophrenia, such as hallucinations or disorganized speech?"),
      Question(
          title: "Absence of mood episodes",
          question:
              "31. Have you not experienced significant mood episodes like depression or mania?"),
      Question(
          title: "Persistence of Delusions",
          question:
              "32. Do your delusions persist over time without significant change?"),
      Question(
          title:
              "Presence of 1 or more delusions within a  duration of one month",
          question:
              "33. Have you experienced one or more delusions lasting at least one month?"),
      Question(
          title: "Presence of perceptual disturbances",
          question:
              "34. Have you noticed any perceptual disturbances, such as seeing or hearing things differently?"),
      Question(
        title: "Less impairment in function",
        question:
            "35. Have your delusions caused only minimal impact on your daily functioning or ability to work and socialize?",
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Delusional Disorder Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: delusionalBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: delusionalBrain.questionBank[index].title,
            question: delusionalBrain.questionBank[index].question,
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: ElevatedButton(
        //   onPressed: () {},
        //   child: Text('Submit'),
        // ),
      ),
    );
  }
}
