import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class AcuteTransient extends StatefulWidget {
  const AcuteTransient({super.key});

  @override
  State<AcuteTransient> createState() => _AcuteTransientState();
}

class _AcuteTransientState extends State<AcuteTransient> {
  final QuestionBrain acuteBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title:
              "hallucinations emerge suddenly and peak within 2 weeks and last less than 3 months.",
          question:
              "Have you ever felt like something else was \ncontrolling you or influencing your actions?"),
      Question(
          title:
              "delusions emerge suddenly and peak within 2 weeks and last less than 3 months.",
          question:
              "Do you sometimes believe things that others \nmight find hard to believe?"),
      Question(
          title: "Disorganized speech ",
          question: "Do you ever see or hear things that others can't?"),
      Question(
          title: "Catatonia-like symptoms are possible.",
          question:
              "Do you sometimes find it difficult to \nexpress your thoughts clearly?"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Acute And Transient Disorder Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: acuteBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: acuteBrain.questionBank[index].title,
            question: acuteBrain.questionBank[index].question,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('Submit')),
      ),
    );
  }
}
