import 'package:flutter/material.dart';
import 'package:metal_health/pages/main_pages/analysis.dart';
import 'package:metal_health/pages/main_pages/home_page.dart';
import 'package:metal_health/pages/main_pages/patient_form.dart';
import 'package:metal_health/pages/main_pages/questionnaire.dart';
import 'package:metal_health/pages/main_pages/report.dart';
import 'package:metal_health/pages/main_pages/treatment.dart';
import 'package:metal_health/utils/reusable_card.dart';
import 'package:metal_health/utils/icon_content.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dash(),
    );
  }
}

class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //App bar
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(22)),
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Doc Mills',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  //profile pic
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.person,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild:
                            const IconContent(icon: Icons.home, label: 'Home'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Questionnaire()));
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild: const IconContent(
                            icon: Icons.library_books, label: 'Questionnaires'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Treatment()));
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild: const IconContent(
                            icon: Icons.question_answer, label: 'Treatment'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Report()));
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild: const IconContent(
                            icon: Icons.book_outlined, label: 'Report'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Patient()));
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild: const IconContent(
                            icon: Icons.people, label: 'Add Patients'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Analysis()));
                        });
                      },
                      child: ReUsableCard(
                        colour: Colors.purple.shade200,
                        cardChild: const IconContent(
                            icon: Icons.analytics_outlined, label: 'Analysis'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
