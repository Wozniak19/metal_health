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
              "Sudden hallucinations peaking within 2 weeks and lasting less than 3 months.",
          question:
              "23. Have you experienced sudden hallucinations that peaked within two weeks and lasted less than three months?"),
      Question(
          title:
              "Delusions emerge suddenly and peak within 2 weeks and last less than 3 months.",
          question:
              "24. Have you had sudden delusions that peaked within two weeks and lasted less than three months?"),
      Question(
          title: "Disorganized speech",
          question:
              "25. Do you find yourself speaking in a way that is difficult for others to follow or understand?"),
      Question(
          title: "Delirium",
          question:
              "26. Have you experienced confusion, disorientation, or sudden changes in awareness or cognition?"),
      Question(
          title: "Catatonia-like symptoms are possible.",
          question:
              "27. Have you noticed any periods of extreme stillness, unusual movements, or unresponsiveness?"),
      Question(
          title: "The disorder does not require hospitalisation",
          question:
              "28. Have your symptoms been manageable without the need for hospitalization?"),
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
