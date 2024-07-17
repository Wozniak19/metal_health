//over here we'll have questions for generalized anxiety,panic disorder,
// specific phobia and social anxiety

import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Anxiety extends StatefulWidget {
  const Anxiety({super.key});

  @override
  State<Anxiety> createState() => _AnxietyState();
}

class _AnxietyState extends State<Anxiety> {
  final QuestionBrain bipolarBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Prolonged heightened mood and activity",
          question:
              "Have you experienced a prolonged, heightened mood and increased "
              "\nactivity lasting for over a week?"),
      Question(
          title: "Persistent risky behaviors",
          question:
              "Have you engaged in risky behaviors that persisted for over a week?"),
      Question(
          title: "Flying thoughts",
          question:
              "Have you had rapid or flying thoughts that you couldn't control?"),
      Question(
          title: "Reduced sleep",
          question:
              "Have you noticed a significant reduction in your need for sleep?"),
      Question(
          title: "High-risk activities",
          question:
              "Have you been excessively involved in activities that have a "
              "\nhigh potential for painful consequences?"),
      Question(
          title: "Talkativeness",
          question: "Have you been more talkative than usual?"),
      Question(
          title: "Grandiosity",
          question:
              "Have you felt an inflated sense of self-esteem or grandiosity?"),
      Question(
          title: "Depressed mood",
          question: "Have you experienced periods of depressed mood?"),
      Question(
          title: "Distractibility",
          question:
              "Have you found it difficult to concentrate or been easily distracted?"),
      Question(
          title: "Not due to substance use",
          question: "Have these symptoms occurred without being "
              "\nattributable to the physiological effects of substance use?"),
      Question(
          title: "Severe mood disruption",
          question: "Have you experienced severe mood disruptions?"),
      Question(
          title: "Duration over one week",
          question:
              "Have these mood disruptions lasted for longer than one week?"),
      Question(
          title: "Uncharacteristic change in functioning",
          question: "Have you had an episode involving a clear change in "
              "\nyour functioning that is uncharacteristic of you?"),
      Question(
          title: "Observable mood disturbance and change",
          question:
              "Have others observed the disturbance in your \nmood and change in functioning?"),
      Question(
          title: "Less severe, psychosis if manic",
          question:
              "Has the episode lacked the severity to impair your functioning \nsignificantly or require hospitalization? "
              "\nIf there were any psychotic features, \nwere they during a manic episode?"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Anxiety  Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: bipolarBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: bipolarBrain.questionBank[index].title,
            question: bipolarBrain.questionBank[index].question,
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
