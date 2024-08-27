import 'package:flutter/material.dart';
import 'package:metal_health/question_brain.dart';
import 'package:metal_health/utils/radio_button.dart';
import 'package:metal_health/question.dart';

class Bipolar extends StatefulWidget {
  final Function(Map<String, String>) onCompleted;

  const Bipolar({super.key, required this.onCompleted});

  @override
  State<Bipolar> createState() => _BipolarState();
}

class _BipolarState extends State<Bipolar> {
  final Map<String, String> responses = {}; // String to String
  final QuestionBrain bipolarBrain = QuestionBrain(
    questionBank: [
      // Your question list here (avoiding code duplication)
      Question(
          title: "Flying thoughts",
          question:
              "36. Have you experienced thoughts racing through your mind, making it difficult to focus on one thing at a time?"),
      Question(
          title:
              "Excessive involvement in activities that have a high potential for painful consequences",
          question:
              "37. Have you found yourself excessively involved in activities that could lead to painful or harmful consequences, such as reckless spending or risky behaviors?"),
      Question(
          title:
              "Mood disturbances(Talkativeness,Grandiosity,Distractibility,Reduced sleep,Irritability)",
          question:
              "38. Have you experienced mood disturbances such as being excessively talkative, feeling grandiose, getting easily distracted, sleeping less, or feeling irritable? (Note: At least three should be present, or four if irritability is one of them.)"),
      Question(
          title:
              "Prolonged, heightened mood and increased activity for over a week",
          question:
              "39. Have you experienced a heightened mood and increased activity level that lasted for over a week?"),
      Question(
          title: "Severe mood disruption needing hospitalization",
          question:
              "40. Has your mood ever become so disruptive that it required hospitalization?"),
      Question(
          title: "Risky behaviours persist over a week",
          question:
              "41. Have you engaged in risky behaviors that persisted for more than a week?"),
      Question(
          title:
              "Not Attributable to the physiological effect of substance use",
          question:
              "42. Have your symptoms occurred without being caused by the effects of substance use, such as drugs or alcohol?"),
      Question(
          title: "Presence of pyschotic symptoms",
          question:
              "43. Have you experienced any psychotic symptoms, such as delusions or hallucinations, during your mood episodes?"),
      Question(
          title:
              "The episode involves a clear change in functioning uncharacteristic of the individual.",
          question:
              "44. Have you noticed a clear change in your functioning during an episode that seems uncharacteristic of your usual self?"),
      Question(
          title:
              "The disturbance in mood and the change in functioning are observable to others",
          question:
              "45. Have others noticed a disturbance in your mood and a change in your functioning?"),
      Question(
        title:
            "Depressive episode(Depressed mood,loss of pleasure,significant weight loss/gain,insonmia or hypersonmia,psychomotor agitation,fatigue , feeling of worthlessness, diminished ability to concentrate or indecisiveness,recurrent thoughts of death)",
        question:
            "46. Have you experienced a depressive episode, including symptoms like a depressed mood, loss of pleasure, significant weight changes, sleep disturbances, psychomotor agitation, fatigue, feelings of worthlessness, difficulty concentrating, or recurrent thoughts of death?",
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    // Set default responses to "No"
    for (var question in bipolarBrain.questionBank) {
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
        title: const Text(
          'Bipolar Disorder Diagnosis',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: ListView.builder(
        itemCount: bipolarBrain.questionCount(),
        itemBuilder: (context, index) {
          final question = bipolarBrain.questionBank[index];
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
