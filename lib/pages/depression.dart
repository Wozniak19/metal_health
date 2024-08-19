import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Depression extends StatefulWidget {
  const Depression({super.key});

  @override
  State<Depression> createState() => _DepressionState();
}

class _DepressionState extends State<Depression> {
  final QuestionBrain depressionBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Depressive moo",
          question:
              "1. Have you been feeling consistently sad, down, or hopeless?"),
      Question(
          title: "Loss of Pleasure",
          question:
              "2. Have you lost interest or pleasure in activities you used to enjoy?"),
      Question(
          title: "Cognitive symptoms",
          question:
              "3. Do you have trouble thinking, concentrating, or making decisions?"),
      Question(
          title: "Behavioural symptoms",
          question:
              "4. Have you noticed changes in your behavior, such as withdrawing from social activities or neglecting responsibilities?"),
      Question(
          title: "Changes in sleep patterns or appetite",
          question:
              "5. Do you often struggle to fall asleep, or do you find yourself sleeping more than usual?"),
      Question(
          title: "Feeling worthless and low self esteem",
          question: "6. Do you often feel worthless or have low self-esteem?"),
      Question(
          title: "Suicidal thoughts",
          question: "7. Have you had thoughts of suicide or harming yourself?"),
      Question(
          title: "Low energy or fatigue",
          question:
              "8. Do you often feel fatigued or have low energy, even when you haven't exerted yourself?"),
      Question(
          title: "Irritability",
          question:
              "9. Do you find yourself feeling irritable or easily annoyed?"),
      Question(
          title: "Disturbed sleep or sleeping too much",
          question:
              "10. Have you noticed changes in your appetite or experienced unexplained weight loss recently?"),
      Question(
          title: "Indecisiveness",
          question:
              "11. Do you struggle with making decisions, even about simple things?"),
      Question(
          title: "Talking or moving more slowly than usual",
          question:
              "12. Have others noticed that you talk or move more slowly than usual?"),
      Question(
          title: "Reduced libido",
          question:
              "13. Have you experienced a decrease in your interest in sex?"),
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
          itemCount: depressionBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: depressionBrain.questionBank[index].title,
            question: depressionBrain.questionBank[index].question,
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
