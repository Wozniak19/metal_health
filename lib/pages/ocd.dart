import 'package:flutter/material.dart';

class OCD extends StatefulWidget {
  const OCD({super.key});

  @override
  State<OCD> createState() => _OCDState();
}

class _OCDState extends State<OCD> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('OCD'),
        ),
      ),
    );
  }
}
