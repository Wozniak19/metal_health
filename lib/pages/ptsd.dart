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
