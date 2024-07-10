// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:metal_health/pages/allpages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MentalHealth());
}

class MentalHealth extends StatefulWidget {
  const MentalHealth({super.key});

  @override
  State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            }

            if (snapshot.hasData) {
              return const Dashboard();
            }

            return const AuthScreen();
          }),
      routes: {
        '/dashboardpage': (context) => Dashboard(),
        '/homepage': (context) => HomePage(),
        '/questionnairepage': (context) => Questionnaire(),
        '/patientpage': (context) => Patient(),
        '/analysispage': (context) => Analysis(),
        '/settingspage': (context) => Settings(),
        '/depressionpage': (context) => Depression(),
      },
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
