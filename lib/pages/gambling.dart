import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Gambling extends StatefulWidget {
  const Gambling({super.key});

  @override
  State<Gambling> createState() => _GamblingState();
}

class _GamblingState extends State<Gambling> {
  final QuestionBrain gambling = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title:
              "Needing to gamble with increasing amounts of money to achieve excitement",
          question:
              "Do you find that you need to gamble with larger amounts of money to feel the same level of excitement?"),
      Question(
          title:
              "Feeling restless or irritable when attempting to cut down or stop gambling",
          question:
              "Do you feel restless or irritable when you try to cut down or stop gambling?"),
      Question(
          title:
              "Making repeated unsuccessful efforts to control, cut back, or stop gambling",
          question:
              "Have you made repeated unsuccessful attempts to control, cut back, or stop gambling?"),
      Question(
        title:
            "Being preoccupied with gambling, such as persistent thoughts of past experiences or planning future gambling ventures",
        question:
            "Are you often preoccupied with thoughts about gambling, such as past experiences or planning future ventures?",
      ),
      Question(
        title:
            "Gambling when feeling distressed, such as feeling helpless, guilty, anxious, or depressed",
        question:
            "Do you gamble when you are feeling distressed, such as when you feel helpless, guilty, anxious, or depressed?",
      ),
      Question(
        title:
            "Chasing losses by returning to gamble again to try to recoup money lost previously",
        question:
            "Do you often return to gamble more money in an attempt to win back money you lost previously?",
      ),
      Question(
        title: "Lying to conceal the extent of involvement with gambling",
        question:
            "Have you ever lied to conceal the extent of your involvement with gambling?",
      ),
      Question(
        title:
            "Jeopardizing or losing significant relationships, jobs, educational, or career opportunities due to gambling",
        question:
            "Has your gambling caused you to jeopardize or lose significant relationships, jobs, educational, or career opportunities?",
      ),
      Question(
        title:
            "Relying on others to provide money to alleviate desperate financial situations caused by gambling",
        question:
            "Do you rely on others to provide money to help with desperate financial situations caused by your gambling?",
      ),
      Question(
        title: "Persistent and recurring problematic gambling behavior",
        question:
            "Do you engage in persistent and recurring gambling behavior despite the negative consequences?",
      ),
      Question(
        title: "Prioritization",
        question:
            "Do you often prioritize gambling over other important activities or responsibilities?",
      ),
      Question(
        title: "Impaired control",
        question:
            "Do you feel you have little or no control over your gambling behavior?",
      ),
      Question(
        title:
            "Continuation despite harm (Gambling despite financial, relationship, legal, or mental health problems)",
        question:
            "Do you continue to gamble despite experiencing financial, relationship, legal, or mental health problems because of it?",
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
            'Gambling Disorder Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: gambling.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: gambling.questionBank[index].title,
            question: gambling.questionBank[index].question,
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
