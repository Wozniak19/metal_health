import 'package:flutter/material.dart';
import 'sadperson.dart'; // Import the Sad Persons Scale page

class Results extends StatelessWidget {
  final dynamic result;
  final bool
      showSadPersonScale; // Flag to determine if we need to show the button

  const Results({
    Key? key,
    required this.result,
    required this.showSadPersonScale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Result: ${result.toString()}',
              style: TextStyle(fontSize: 24),
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
                      primary: Colors.red, // Button color
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
    );
  }
}
