import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Report Page'),
        backgroundColor: Colors.grey.shade200,
      ),
      body: const Center(
        child: Text('Testing the report page'),
      ),
    );
  }
}
