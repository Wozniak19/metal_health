import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Schizophrenia extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const Schizophrenia({super.key, required this.onCompleted});

  @override
  State<Schizophrenia> createState() => _SchizophreniaState();
}

class _SchizophreniaState extends State<Schizophrenia> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain schizophreniaBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Delusions",
          question:
              "14. Do you hold beliefs that others consider false or unusual, and that you are unwilling to give up?"),
      Question(
          title: "Hallucinations",
          question:
              "15. Do you see or hear things that others do not perceive?"),
      Question(
          title: "Disorganized thinking or speech patterns",
          question:
              "16. Do you find it difficult to organize your thoughts or speak in a way that others can easily understand?"),
      Question(
          title: "Disburbance in multiple mental modalities",
          question:
              "17. Do you experience difficulties in more than one area of your mental functioning, such as thinking, perception, or emotions?"),
      Question(
          title: "Functional decline",
          question:
              "18. Have you noticed a decline in your ability to function at work, in social settings, or in daily activities?"),
      Question(
          title:
              "Negative symptoms(avolition,agolia,diminished emotional expression,anhedonia)",
          question:
              "19. Do you find yourself lacking motivation, struggling to express emotions, or feeling less pleasure in activities you once enjoyed?"),
      Question(
          title: "Family history",
          question:
              "20. Is there a history of schizophrenia or similar mental health conditions in your family?"),
      Question(
          title: "Neurological soft signs",
          question:
              "21. Have you noticed subtle motor or sensory changes, such as awkwardness or difficulties with coordination?"),
      Question(
        title: "Not influenced by drugs or medical conditions",
        question:
            "22. Are your symptoms present even when you are not using drugs or experiencing a medical condition that could explain them?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in schizophreniaBrain.questionBank) {
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
          'Schizophrenia Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: schizophreniaBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = schizophreniaBrain.questionBank[index];
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
