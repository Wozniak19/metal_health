import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'results.dart';
import 'package:metal_health/pages/allpages.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({super.key});

  @override
  State<Questionnaire> createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  final Map<String, String> allResponses = {}; // String to String
  bool _isLoading = false;
  bool _hasSuicidalThoughts = false;

  void _submitAllResponses() async {
    setState(() {
      _isLoading = true; // Show loading indicator
    });

    try {
      final url = Uri.parse('https://host-rr98.onrender.com/classify');

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},

        body: json.encode(allResponses), // Send responses as JSON
      );

      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Results(
              result: json.decode(response.body),
              showSadPersonScale: _hasSuicidalThoughts,
            ),
          ),
        );
      } else {
        _showErrorDialog('Failed to submit data: ${response.statusCode}');
      }
    } catch (error) {
      _showErrorDialog('An error occurred: $error');
    } finally {
      setState(() {
        _isLoading = false; // Hide loading indicator
      });
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> cardTitles = [
      'Depression',
      'Schizophrenia',
      'Acute and transient disorder',
      'Delusional Disorder',
      'Bipolar disorder',
      'Anxiety',
      'OCD',
      'PTSD',
      'Gambling Disorder',
      'Substance Use And Abuse',
    ];

    final List<Widget Function()> destinationPages = [
      () => Depression(
            onCompleted: (responses) {
              allResponses.addAll(responses);
            },
            onSuicidalThoughtsChecked: (hasSuicidalThoughts) {
              _hasSuicidalThoughts = hasSuicidalThoughts;
            },
          ),
      () => Schizophrenia(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => AcuteTransient(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => DelusionalDisorder(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => Bipolar(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => Anxiety(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => OCD(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => PTSD(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => Gambling(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
      () => SubstanceUseAndAbuse(onCompleted: (responses) {
            allResponses.addAll(responses);
          }),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade200,
          title: const Text(
            'Questionnaire Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : GridView.count(
                crossAxisCount: 2, // Adjust the number of columns as needed
                children: List.generate(
                  cardTitles.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => destinationPages[index](),
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.grey.shade200,
                        child: Center(
                          child: Text(cardTitles[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButton(
          onPressed: _submitAllResponses,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            'Submit',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
