import 'package:flutter/material.dart';
import 'sadperson.dart'; // Import the Sad Persons Scale page

class Results extends StatelessWidget {
  final Map<String, dynamic> result; // Assuming result is a Map<String, int>
  final bool
      showSadPersonScale; // Flag to determine if we need to show the button

  const Results({
    Key? key,
    required this.result,
    required this.showSadPersonScale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> disorder = result['Disorder'];
    Map<String, String> probabilities = result['Probabilities']!;
    List severity = [];
    for (var entry in disorder.entries) {
      if (entry.value == '1') {
        severity.add([entry.key, probabilities[entry.key]]);
      }
    }
    // Identify MHDs with a value of 1
    // List<dynamic> detectedMHDs = result['Disorder']!
    //     .entries
    //     .where((entry) => entry.value == "1" || entry.value == "1.0")
    //     .map((entry) => entry.key)
    //     .toList();

    // List<dynamic> probaMHDs = result['Probabilities']!
    //     .entries
    //     .where((entry) => entry.value == "1" || entry.value == "1.0")
    //     .map((entry) => entry.key)
    //     .toList();

    // Determine the message based on the number of detected MHDs
    String mhdMessage = '';
    if (severity.isEmpty) {
      mhdMessage = "No mental health disorders detected";
    } else if (severity.length == 1) {
      mhdMessage = "Only ${severity[0][0]} detected";
    } else if (severity.length == 2) {
      mhdMessage = "${severity[0][0]} commorbid with ${severity[1][0]} ";
    }
    //else {
    //   String lastMHD = detectedMHDs.removeLast();
    //   mhdMessage = "${severities.join(', ')} and $lastMHD detected";
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Results Page',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    mhdMessage,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      'Result: ${result.toString()}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
            if (showSadPersonScale) // Show the button conditionally
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SadPersonScale(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Go to Sad Persons Scale',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
