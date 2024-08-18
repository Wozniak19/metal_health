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
        title: "Gambling Behaviour",
        question: "87. Do you gamble ?",
      ),
      Question(
          title:
              "Persisent and recurring problematic gambling behaviour(Needing to gamble with increasing amounts of money to achieve excitement,Feeling restless or irritable when attempting to cut down or stop gambling.,Making repeated unsuccessful efforts to control, cut back, or stop gambling.,Being preoccupied with gambling, such as persistent thoughts of past experiences or planning future gambling ventures.,Gambling when feeling distressed, such as feeling helpless, guilty, anxious, or depressed.,Chasing losses by returning to gamble again to try to recoup money lost previously.,Lying to conceal the extent of involvement with gambling.Jeopardizing or losing significant relationships, jobs, educational, or career opportunities due to gambling.,Relying on others to provide money to alleviate desperate financial situations caused by gambling.)",
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
