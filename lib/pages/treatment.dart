import 'package:flutter/material.dart';

class Treatment extends StatelessWidget {
  const Treatment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Treatment Page'),
          backgroundColor: Colors.grey.shade200,
        ),
        body: const Center(
          child: Text('Testing the Treatment Page'),
        ));
  }
}
