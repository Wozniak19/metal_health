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
          title: "family history",
          question:
              "20. Is there a history of schizophrenia or similar mental health conditions in your family?"),
      Question(
          title: "neurological soft signs",
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
