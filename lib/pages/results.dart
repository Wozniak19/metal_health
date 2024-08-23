import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Map<String, dynamic> result;

  const Results({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Results'),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Center(
        child: Text('Results: ${result.toString()}'),
      ),
    );
  }
}
