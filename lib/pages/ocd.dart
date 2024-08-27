import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class OCD extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const OCD({super.key, required this.onCompleted});

  @override
  State<OCD> createState() => _OCDState();
}

class _OCDState extends State<OCD> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain ocdBrain = QuestionBrain(
    questionBank: [
      Question(
        title: "Obsessions or compulsions are time consuming",
        question:
            "76. Do your obsessions or compulsions consume a significant amount of time each day?",
      ),
      Question(
        title: "Not influenced by drugs or medical condition(s)",
        question:
            "77. Are your obsessions or compulsions not influenced by drugs or medical conditions?",
      ),
      Question(
        title: "Uncontrollable, obsessive thoughts.",
        question: "78. Do you experience uncontrollable, obsessive thoughts?",
      ),
      Question(
        title: "Duration of 3 weeks.",
        question: "79. Have these symptoms been present for at least 3 weeks?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in ocdBrain.questionBank) {
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
          'OCD Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: ocdBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = ocdBrain.questionBank[index];
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
