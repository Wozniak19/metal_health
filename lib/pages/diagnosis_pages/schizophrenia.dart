import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Schizophrenia extends StatefulWidget {
  const Schizophrenia({super.key});

  @override
  State<Schizophrenia> createState() => _SchizophreniaState();
}

class _SchizophreniaState extends State<Schizophrenia> {
  final QuestionBrain schizophreniaBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Experiences of influence,passitivity or control",
          question:
              "Have you ever felt like something else was \ncontrolling you or influencing your actions?"),
      Question(
          title: "delusions",
          question:
              "Do you sometimes believe things that others \nmight find hard to believe?"),
      Question(
          title: "hallucinations",
          question: "Do you ever see or hear things that others can't?"),
      Question(
          title: "disorganized thinking or speech patterns",
          question:
              "Do you sometimes find it difficult to \nexpress your thoughts clearly?"),
      Question(
          title: "disorganized speech patterns",
          question:
              "Have you noticed changes in your \nthinking, mood, or behavior?"),
      Question(
          title: "disburbance in multiple mental modalities",
          question: "Do you feel worthless or have low self-esteem?"),
      Question(
          title: "functional decline",
          question:
              "Have you noticed a decline in your \nability to do everyday tasks?"),
      Question(
          title: "negative symptoms",
          question:
              "Do you often feel like you \nlack motivation or interest in things?"),
      Question(
          title: "family history",
          question: "Does anyone in your family have mental health issues?"),
      Question(
          title: "neurological soft signs",
          question:
              "Do you have any unusual movements or \nbehaviors that others might notice?"),
      Question(
          title: " avolition",
          question:
              "Do you sometimes struggle to find the \nmotivation to do things?"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Schizophrenia Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: schizophreniaBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: schizophreniaBrain.questionBank[index].title,
            question: schizophreniaBrain.questionBank[index].question,
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: ElevatedButton(
        //   onPressed: () {
        //     setState(() {});
        //   },
        //   child: Text('Submit'),
        // ),
      ),
    );
  }
}
