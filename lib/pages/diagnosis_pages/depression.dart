import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Depression extends StatefulWidget {
  const Depression({super.key});

  @override
  State<Depression> createState() => _DepressionState();
}

class _DepressionState extends State<Depression> {
  final QuestionBrain depressionBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Depressive mood",
          question: "Are you currently experiencing a depressive mood?"),
      Question(
          title: "Loss of Pleasure",
          question:
              "Are you finding activities that you once found \nenjoyable less pleasurable now?"),
      Question(
          title: "Cognitive symptoms",
          question: "Do you notice any changes in your thinking \nor memory?"),
      Question(
          title: "Behavioural symptoms",
          question: "Have you noticed any changes in how you act?"),
      Question(
          title: "Changes in sleep patterns or appetite",
          question: "Have your sleeping or eating habits changed?"),
      Question(
          title: "Feeling worthless and low self esteem",
          question: "Do you feel worthless or have low self-esteem?"),
      Question(
          title: "Suicidal thoughts",
          question: "Do you have thoughts of harming yourself?"),
      Question(
          title: "Low energy or fatigue",
          question: "Do you feel tired or lacking in energy?"),
      Question(
          title: "Irritability",
          question: "Do you find yourself easily getting irritated?"),
      Question(
          title: "Disturbed sleep or sleeping too much",
          question: "Are you having trouble sleeping or \nsleeping too much?"),
      Question(
          title: "Indecisiveness",
          question: "Do you find it hard to make decisions?"),
      Question(
          title: "Talking or moving more slowly than usual",
          question: "Are you speaking or moving slower than usual?"),
      Question(
          title: "Reduced libido",
          question: "Have you noticed a decrease in your sex drive?"),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Depression Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: depressionBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: depressionBrain.questionBank[index].title,
            question: depressionBrain.questionBank[index].question,
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
