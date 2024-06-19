import 'package:flutter/material.dart';

class SubstanceUseAndAbuse extends StatefulWidget {
  const SubstanceUseAndAbuse({super.key});

  @override
  State<SubstanceUseAndAbuse> createState() => _SubstanceUseAndAbuseState();
}

class _SubstanceUseAndAbuseState extends State<SubstanceUseAndAbuse> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Substance USE'),
        ),
      ),
    );
  }
}
