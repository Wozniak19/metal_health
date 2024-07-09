import 'package:flutter/material.dart';

class PTSD extends StatefulWidget {
  const PTSD({super.key});

  @override
  State<PTSD> createState() => _PTSDState();
}

class _PTSDState extends State<PTSD> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('PTSD'),
        ),
      ),
    );
  }
}
