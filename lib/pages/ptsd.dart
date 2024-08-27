import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class PTSD extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const PTSD({super.key, required this.onCompleted});

  @override
  State<PTSD> createState() => _PTSDState();
}

class _PTSDState extends State<PTSD> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain ptsdBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Traumatic Experience",
          question:
              "80. Have you experienced a traumatic event that you find difficult to forget or cope with?"),
      Question(
          title: "Avoiding the stressor (Avoidance Behavior)",
          question:
              "81. Do you avoid reminders or situations related to the traumatic event?"),
      Question(
          title: "Cognitive and Emotional Changes",
          question:
              "82. Have you noticed changes in your thinking or emotions since the traumatic event?"),
      Question(
        title: "Arousal Changes",
        question:
            "83. Is there a marked alteration in arousal and reactivity after the event has occurred (e.g., irritable and angry outbursts, reckless or self-destructive behavior, hypervigilance, problems with concentration), with two or more of these symptoms present?",
      ),
      Question(
        title:
            "Persistent remembering of the incident(Flashback), having dreams or nightmares.",
        question:
            "84. Do you have frequent flashbacks, dreams, or nightmares about the traumatic event?",
      ),
      Question(
        title:
            "Causes significant impairment in personal, family, social, educational, occupational, or other important areas of functioning.",
        question:
            "85. Has the trauma significantly impacted your personal, family, social, educational, or work life over the duration of a month?",
      ),
      Question(
        title: "It causes impairment in functioning",
        question:
            "86. Do your PTSD symptoms cause significant impairment in your daily functioning?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in ptsdBrain.questionBank) {
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
          'PTSD Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: ptsdBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = ptsdBrain.questionBank[index];
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
