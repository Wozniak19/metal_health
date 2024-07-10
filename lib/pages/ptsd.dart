import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class PTSD extends StatefulWidget {
  const PTSD({super.key});

  @override
  State<PTSD> createState() => _PTSDState();
}

class _PTSDState extends State<PTSD> {
  final QuestionBrain ptsd = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Traumatic Experience",
          question:
              "Have you experienced a traumatic event that caused you intense fear, helplessness, or horror?"),
      Question(
          title: "Post-Trauma Experience",
          question:
              "Have you experienced distressing symptoms after the traumatic event?"),
      Question(
          title: "Avoiding the Stressor (Avoidance Behavior)",
          question:
              "Do you avoid people, places, or activities that remind you of the traumatic event?"),
      Question(
        title: "Cognitive and Emotional Changes",
        question:
            "Have you noticed significant changes in your thoughts or feelings since the traumatic event?",
      ),
      Question(
        title: "Arousal Changes",
        question:
            "Are you more easily startled or constantly on guard since the traumatic event?",
      ),
      Question(
        title:
            "Persistent Remembering of the Incident (Flashbacks), Having Dreams or Nightmares",
        question:
            "Do you frequently have flashbacks, dreams, or nightmares about the traumatic event",
      ),
      Question(
        title:
            "Causes Significant Impairment in Personal, Family, Social, Educational, Occupational, or Other Important Areas of Functioning",
        question:
            "Has the traumatic event significantly impacted your personal, family, social, educational, or work life?",
      ),
      Question(
        title: "It Causes Impairment in Functioning",
        question:
            "Do your symptoms make it difficult for you to function in your daily life?",
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
          itemCount: ptsd.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: ptsd.questionBank[index].title,
            question: ptsd.questionBank[index].question,
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
