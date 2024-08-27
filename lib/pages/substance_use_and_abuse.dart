import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class SubstanceUseAndAbuse extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const SubstanceUseAndAbuse({super.key, required this.onCompleted});

  @override
  State<SubstanceUseAndAbuse> createState() => _SubstanceUseAndAbuseState();
}

class _SubstanceUseAndAbuseState extends State<SubstanceUseAndAbuse> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain substanceBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Use of illicit drugs or alcohol",
          question: "92. Do you use illicit drugs or alcohol?"),
      Question(
          title: "Use of unprescribed medication",
          question:
              "93. Do you use medication that was not prescribed to you?"),
      Question(
          title: "Increase in dosage",
          question: "94. Have you increased the dosage of substances you use?"),
      Question(
        title: "Uncontrollable desire to use drugs ",
        question:
            "95. Do you have an uncontrollable desire to use drugs or a strong addiction to them?",
      ),
      Question(
        title: "Neglect of social activity",
        question:
            "96. Have you neglected social activities due to substance use?",
      ),
      Question(
        title: "Use despite knowledge of harm",
        question:
            "97. Do you continue using substances despite knowing they cause harm?",
      ),
      Question(
        title: "Withdrawal symptoms",
        question:
            "98. Do you experience withdrawal symptoms when you stop using substances?",
      ),
      Question(
        title: "duration of 12 months",
        question: "99. Has your substance use persisted for 12 months or more?",
      ),
      Question(
        title: "AGE",
        question: "100. Are you oldet than 40 years?",
      ),
      Question(
        title: "SEX",
        question: "101.Are you a male?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in substanceBrain.questionBank) {
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
          'Substance Use & Abuse',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: substanceBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = substanceBrain.questionBank[index];
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
