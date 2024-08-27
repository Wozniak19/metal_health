import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Depression extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;
  final Function(bool)
      onSuicidalThoughtsChecked; // Callback for suicidal thoughts

  const Depression({
    super.key,
    required this.onCompleted,
    required this.onSuicidalThoughtsChecked,
  });

  @override
  State<Depression> createState() => _DepressionState();
}

class _DepressionState extends State<Depression> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain depressionBrain = QuestionBrain(
    questionBank: [
      Question(
          title: "Depressive mood",
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
  void initState() {
    super.initState();
    // Set default responses to "No" -> "0" as String
    for (var question in depressionBrain.questionBank) {
      responses[question.title] = "0";
    }
  }

  void _submitResponses() {
    final hasSuicidalThoughts = responses["Suicidal thoughts"] == "1";
    widget.onSuicidalThoughtsChecked(hasSuicidalThoughts);

    widget.onCompleted(responses);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Depression Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: depressionBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = depressionBrain.questionBank[index];
          return RadioButton(
            bigTitle: question.title,
            question: question.question,
            initialValue:
                responses[question.title]!, // Ensure string value is passed
            onChanged: (String title, String value) {
              setState(() {
                responses[title] = value;
              });
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _submitResponses,
        child: const Text('Submit'),
      ),
    );
  }
}
