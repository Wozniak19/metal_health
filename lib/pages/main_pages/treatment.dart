import 'package:flutter/material.dart';

class Treatment extends StatelessWidget {
  const Treatment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Treatment Page'),
          backgroundColor: Colors.grey.shade200,
        ),
        body: Center(
          child: Text('Testing the Treatment Page'),
        ));
  }
}
