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
          title: "Obsessions or compulsions or both are time-consuming",
          question:
              "Do you spend more than an hour each day dealing with obsessive thoughts or compulsive behaviors?"),
      Question(
          title: "Not influenced by drugs or medical conditions",
          question:
              "Are your obsessive thoughts and compulsive behaviors present even when you are not under the influence of drugs or medications?"),
      Question(
          title: "Uncontrollable, obsessive thoughts",
          question:
              "Do you find it difficult or impossible to control your obsessive thoughts?"),
      Question(
        title: "Duration of 3 weeks",
        question:
            "Have you experienced these obsessive thoughts or compulsive behaviors consistently for at least the past three weeks?",
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
