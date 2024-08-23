//over here we'll have questions for generalized anxiety,panic disorder,
// specific phobia and social anxiety

import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Anxiety extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const Anxiety({super.key, required this.onCompleted});

  @override
  State<Anxiety> createState() => _AnxietyState();
}

class _AnxietyState extends State<Anxiety> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain anxietyBrain = QuestionBrain(
    questionBank: [
      //Start of Generalized Anxiety
      Question(
          title: "Excessive worry,Restlessness",
          question:
              "47.Have you experienced excessive worry or restlessness that is difficult to control?"),
      Question(
          title:
              "The anxiety and worry are associated with 3 or more of the ff,fatigue, concentration difficulties, irritability, muscle tension, sleep disturbance )",
          question:
              "48.Have you experienced three or more of the following symptoms: fatigue, difficulty concentrating, irritability, muscle tension, or sleep disturbances?"),
      Question(
          title:
              "Persistent anxiety about various aspects, lasting over 6 months",
          question:
              "49.Have you had persistent worry or fear about various aspects of your life that has lasted for over six months?"),
      Question(
          title: "Difficulty controlling the worry (Controlling worry)",
          question:
              "50.Have you found it difficult to control your worry or stop yourself from worrying?"),
      Question(
          title:
              "Anxiety causes distress, impairs social, occupational functioning; clinically significant impact",
          question:
              "51.Has your nervousness caused significant distress or impairment in your social, occupational, or other important areas of functioning?"),
      Question(
          title:
              "Not caused by substances or medical conditions; excludes physiological attributions.",
          question:
              "52.Have your symptoms occurred without being caused by the effects of substances or medical conditions?"),
      Question(
          title:
              "Symptoms must also occur most part of the day, not confined to specific situations or objects",
          question:
              "53.Do your symptoms occur most of the day and are not limited to specific situations or objects?"),
      //End of Generalized Anxiety

      //Start of Panic Disorder
      Question(
          title:
              "Recurrent panic attacks involving abrupt, intense fear with physical and psychological symptoms(palpitations or increased heart rate,sweating,trembling,shortness of breath,chest pain,dizziness or lightheadedness,chills,hot flushes, fear of imminent death, four of more present )",
          question:
              "54.Have you experienced recurrent panic attacks involving abrupt, intense fear, with symptoms like palpitations, sweating, trembling, shortness of breath, chest pain, dizziness, chills,nausea,paresthesias,derealization,fear of losing control,hot flushes, or fear of imminent death, with four or more symptoms present?"),
      Question(
          title: "Discrete episodes of intense fear or apprehension(5-30 mins)",
          question:
              "55.Have you experienced discrete episodes of intense fear or apprehension lasting between 5 to 30 minutes?"),
      Question(
          title:
              "Disturbance is not due to substance effects or medical conditions like hyperthyroidism, ruling out physiological attributions",
          question:
              "56.Are your panic attacks not caused by the effects of substances or medical conditions like hyperthyroidism?"),
      Question(
          title:
              "The person may also have worries or fears of further episodes occurring",
          question:
              "57.Do you worry or have fears about further episodes of panic attacks occurring?"),
      //End of Panic Disorder

      //Start of Specific Phobia
      Question(
          title:
              "Marked and excessive fear triggered by specific objects or situations. (Sighting of blood or injury, fear of heights, fear of closed spaces)",
          question:
              "58.Do you experience marked and excessive fear triggered by specific objects or situations, such as the sight of blood, heights, or closed spaces?"),
      Question(
          title:
              "The object or situation almost always promotes immediate fear",
          question:
              "59.Does the sight or thought of the specific object or situation almost always cause immediate fear?"),
      Question(
          title:
              "The phobic object or situation is actively avoided or endured with intense fear or anxiety",
          question:
              "60.Do you avoid the phobic object or situation, or endure it with intense fear or worry?"),
      Question(
        title:
            "The fear or anxiety is out of proportion to the actual danger posed by the specific objector situation and to the sociocultural context.",
        question:
            "61.Is your fear or worry out of proportion to the actual danger posed by the specific object or situation in your sociocultural context?",
      ),
      Question(
        title:
            "The fear, anxiety, or avoidance causes clinically significant distress or impairment in social, occupational, or other important areas of functioning",
        question:
            "62.Does your fear, worry, or avoidance cause significant distress or impairment in your social, work, or other important areas of functioning?",
      ),
      Question(
        title: "Fear is out of proportion to actual danger.",
        question:
            "63.Is your fear out of proportion to the actual danger posed by the object or situation?",
      ),
      Question(
        title: "Avoidance or intense anxiety is present",
        question:
            "64.Is the fear or avoidance persistent typically lasting for 6 months or more",
      ),
      //End of Specific Phobia

      //Start of Social Anxiety
      Question(
          title: "Marked avoidance of such objects or situations.",
          question:
              "65.Do you find yourself markedly avoiding social situations or objects that trigger fear or anxiety?"),
      Question(
          title: "fear or anxiety is out of proportion",
          question:
              "66.Is your fear or anxiety in social situations out of proportion to the actual threat or situation?"),
      Question(
          title:
              "Fear or anxiety causes impairment in function either social, occupational or other important areas of functioning",
          question:
              "67.Does your fear or anxiety cause significant impairment in your social, occupational, or other important areas of functioning?"),
      Question(
          title: "The social situations almost always provoke fear or anxiety",
          question:
              "68.Do social situations almost always provoke fear or anxiety for you?"),
      Question(
          title:
              "The social situations are avoided or endured with intense fear or anxiety",
          question:
              "69.Do you avoid social situations or endure them with intense fear or anxiety?"),
      Question(
          title:
              "The individual fears that he or she will act in a way or show anxiety symptoms that will be negatively evaluated",
          question:
              "70.Do you fear that you will act in a way or show anxiety symptoms that will be negatively evaluated by others?"),
      Question(
          title: "Fear of negative evaluation by others.",
          question:
              "71.Do you have a persistent fear of being negatively evaluated by others in social situations?"),
      Question(
          title:
              "Intense and persistent fear or anxiety in social situations, including conversations.",
          question:
              "72.Do you experience intense and persistent fear or anxiety in social situations, including conversations?"),
      Question(
          title:
              "Significant emotional distress due to the symptoms or to the avoidance.",
          question:
              "73.Do your symptoms or the avoidance of social situations cause significant emotional distress?"),
      Question(
          title:
              "Recognition that the symptoms or the avoidance are excessive or unreasonable.",
          question:
              "74.Do you recognize that your symptoms or the avoidance of social situations are excessive or unreasonable?"),
      Question(
        title:
            "Symptoms are restricted to or predominate in the feared situation or when thinking about it which could lead to Blushing,Fear of vomiting. Urgency or fear of micturition or defecation",
        question:
            "75.Do your symptoms predominate in social situations or when thinking about them, such as blushing, fear of vomiting, or urgency or fear of micturition or defecation?",
      ),
      //End of Social Anxiety
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No"
    for (var question in anxietyBrain.questionBank) {
      responses[question.title] = "0";
    }
  }

  void _submitResponses() {
    widget.onCompleted(responses);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anxiety Diagnosis'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: anxietyBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = anxietyBrain.questionBank[index];
          return RadioButton(
            bigTitle: question.title,
            question: question.question,
            initialValue: responses[question.title]!,
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
