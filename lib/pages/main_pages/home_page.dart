// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last
// import 'package:metal_health/utils/doctor_card.dart';
// import 'package:metal_health/pages/patient_form.dart';
// import 'package:metal_health/pages/patient_form.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:metal_health/utils/customField.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:metal_health/utils/carousel_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarouselCard> cards = [
    CarouselCard(
      mhd_Type: 'Depression',
      Num_Of_Days: 7,
      mhd_Cases: 55,
    ),
    CarouselCard(
      mhd_Type: 'Schizophrenia',
      Num_Of_Days: 6,
      mhd_Cases: 23,
    ),
    CarouselCard(
      mhd_Type: 'PTSD',
      Num_Of_Days: 5,
      mhd_Cases: 100,
    ),
    CarouselCard(
      mhd_Type: 'Gambling Disorder',
      Num_Of_Days: 8,
      mhd_Cases: 90,
    ),
    CarouselCard(
      mhd_Type: 'Acute Transient Disorder',
      Num_Of_Days: 8,
      mhd_Cases: 67,
    ),
    CarouselCard(
      mhd_Type: 'Bipolar Disorder',
      Num_Of_Days: 7,
      mhd_Cases: 78,
    ),
    CarouselCard(
      mhd_Type: 'OCD',
      Num_Of_Days: 9,
      mhd_Cases: 88,
    ),
  ];

  int selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.deepPurple[200],
        currentIndex: selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: 'Questionnaire'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Patients'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics), label: 'Analysis'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: SafeArea(
        child: Column(
          //App bar
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
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
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.person,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Card -> how do you feel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //Animation or cute picture
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                          'https://lottie.host/e6b63ebe-158c-4d8a-99a4-16b144850573/TX0xPGHXUa.json'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //how do you feel today + button..
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Fill out you medical card right now',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                                child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, '/patientpage');
                                });
                              },
                              child: Text(
                                'Start Diagnosis',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //search bar
            CustomField(
              hint: 'how can we help',
              selectedIcon: Icon(Icons.search),
            ),

            //spacing
            SizedBox(
              height: 20,
            ),

            Expanded(
              child: CarouselSlider(
                items: cards.map((card) => card).toList(),
                options: CarouselOptions(height: 150, autoPlay: true),
              ),
            ),
            //Graph Area
            Expanded(
                child: Container(
              color: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
