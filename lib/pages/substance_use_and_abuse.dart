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
