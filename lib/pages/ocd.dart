import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class OCD extends StatefulWidget {
  const OCD({super.key});

  @override
  State<OCD> createState() => _OCDState();
}

class _OCDState extends State<OCD> {
  final QuestionBrain ocdBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Obsessions or compulsions or both are time consuming",
          question:
              "76. Do your obsessions or compulsions consume a significant amount of time each day?"),
      Question(
          title: "Not influenced by drugs or medical conditions",
          question:
              "77. Are your obsessions or compulsions not influenced by drugs or medical conditions?"),
      Question(
          title: "Uncontrollable, obsessive thoughts.",
          question:
              "78. Do you experience uncontrollable, obsessive thoughts?"),
      Question(
        title: "Duration of 3 weeks.",
        question: "79. Have these symptoms been present for at least 3 weeks?",
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
            'Depression Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: ocdBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: ocdBrain.questionBank[index].title,
            question: ocdBrain.questionBank[index].question,
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
