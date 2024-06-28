import 'package:flutter/material.dart';
import 'package:metal_health/utils/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class DelusionalDisorder extends StatefulWidget {
  const DelusionalDisorder({super.key});

  @override
  State<DelusionalDisorder> createState() => _DelusionalDisorderState();
}

class _DelusionalDisorderState extends State<DelusionalDisorder> {
  final QuestionBrain delusionalBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Delusions lasting 3 months",
          question:
              "Have you had any beliefs or ideas that \nyou think others might find unusual "
              "\nor not based in reality for at least the past three months?"),
      Question(
          title: "Absence of schizophrenia symptoms",
          question:
              "Have you experienced any symptoms typically \nassociated with schizophrenia, "
              "\nsuch as hallucinations or disorganized thinking?"),
      Question(
          title: "Absence of mood episodes",
          question: "Have you had any significant changes in your mood, "
              "\nsuch as prolonged periods of depression or episodes of \nextreme happiness and energy?"),
      Question(
          title: "Persistence of Delusions",
          question:
              "Do your unusual beliefs ever go away or become less intense?"),
      Question(
          title: "Presence of perceptual disturbances",
          question: "Have you had any unusual sensory experiences, "
              "\nlike seeing, hearing, or feeling things that others do not?"),
      Question(
          title: "Less impairment in function",
          question:
              "Despite your unusual beliefs, are you still able to maintain "
              "\nyour work, social life, and personal care \nwithout much difficulty?"),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Delusional Disorder Diagnosis',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
        ),
        body: ListView.builder(
          itemCount: delusionalBrain.questionCount(),
          itemBuilder: (context, index) => RadioButton(
            bigTitle: delusionalBrain.questionBank[index].title,
            question: delusionalBrain.questionBank[index].question,
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
