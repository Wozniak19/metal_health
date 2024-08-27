import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Gambling extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const Gambling({super.key, required this.onCompleted});

  @override
  State<Gambling> createState() => _GamblingState();
}

class _GamblingState extends State<Gambling> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain gamblingBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
        title: "Gambling Behaviour",
        question: "87. Do you gamble ?",
      ),
      Question(
          title: "Persisent and recurring problematic gambling behaviour",
          question:
              "88. Do you experience persistent and recurring problems related to gambling, such as needing to gamble with increasing amounts, feeling irritable when trying to stop, making unsuccessful attempts to cut back, or having gambling-related issues in your life?"),
      Question(
          title: "Prioritization",
          question:
              "89. Do you prioritize gambling over other activities or responsibilities?"),
      Question(
        title: "Impaired control",
        question:
            "90. Do you have difficulty controlling or limiting your gambling behavior?",
      ),
      Question(
        title:
            "Continuation despite harm(Gambling despite financial, relationship, legal, or mental health problems)",
        question:
            "91. Do you continue to gamble despite experiencing financial, relationship, legal, or mental health problems as a result?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in gamblingBrain.questionBank) {
      responses[question.title] = "0";
    }
  }

  void _submitResponses() {
    widget.onCompleted(responses);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gambling Disorder Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: gamblingBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = gamblingBrain.questionBank[index];
          return RadioButton(
            bigTitle: question.title,
            question: question.question,
            initialValue:
                responses[question.title]!, // Ensure string value is passed
            onChanged: (String title, String value) {
              setState(() {
                responses[title] = value;
              });
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _submitResponses,
        child: const Text('Submit'),
      ),
    );
  }
}
