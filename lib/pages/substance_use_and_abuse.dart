import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class SubstanceUseAndAbuse extends StatefulWidget {
  const SubstanceUseAndAbuse({super.key});

  @override
  State<SubstanceUseAndAbuse> createState() => _SubstanceUseAndAbuseState();
}

class _SubstanceUseAndAbuseState extends State<SubstanceUseAndAbuse> {
  final QuestionBrain ptsd = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Use of illicit drugs",
          question: "Have you used illicit drugs in the past 12 months?"),
      Question(
          title: "Use of unprescribed medication",
          question:
              "Have you used medication that was not prescribed to you in the past 12 months?"),
      Question(
          title: "Increase in dosage",
          question:
              "Have you found yourself increasing the dosage of drugs or medication to achieve the desired effect?"),
      Question(
        title: "Using more than planned",
        question:
            "Have you often used drugs or medication in larger amounts or over a longer period than you intended?",
      ),
      Question(
        title: "Uncontrollable desire to use drugs / Strong addiction to drugs",
        question:
            "Do you feel an uncontrollable desire or strong addiction to use drugs?",
      ),
      Question(
        title: "Neglect of social activity",
        question:
            "Have you neglected important social, occupational, or recreational activities because of your drug use?",
      ),
      Question(
        title: "Use despite knowledge of harm",
        question:
            "Do you continue to use drugs despite knowing they cause you harm?",
      ),
      Question(
        title: "Withdrawal symptoms",
        question:
            "Have you experienced withdrawal symptoms when you stopped or reduced your drug use?",
      ),
      Question(
        title: "Increased tolerance to the drugs",
        question:
            "Do you need to use larger amounts of drugs to get the same effect that you used to achieve with smaller amounts?",
      ),
      Question(
        title: "Duration of 12 months",
        question:
            "Have you been experiencing issues related to drug use consistently for the past 12 months?",
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
            'Substance Use and Abuse Diagnosis',
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
