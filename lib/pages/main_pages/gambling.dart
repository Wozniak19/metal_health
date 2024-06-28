import 'package:flutter/material.dart';

class Gambling extends StatefulWidget {
  const Gambling({super.key});

  @override
  State<Gambling> createState() => _GamblingState();
}

class _GamblingState extends State<Gambling> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('chacha'),
        ),
      ),
    );
  }
}
