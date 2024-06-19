// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
// import 'package:metal_health/utils/droplist.dart';
import 'package:flutter/material.dart';
import 'package:metal_health/utils/customField.dart';
import 'package:metal_health/utils/dropdown.dart';

class Patient extends StatefulWidget {
  const Patient({super.key});

  @override
  State<Patient> createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PatientForm(),
      // routes: {'/PatientForm': (context) => PatientForm()},
    );
  }
}

class PatientForm extends StatelessWidget {
  const PatientForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'Patient Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(height: 20),
          CustomField(hint: 'First Name', selectedIcon: Icon(Icons.person)),
          SizedBox(height: 20),
          CustomField(hint: 'Last Name', selectedIcon: Icon(Icons.person)),
          SizedBox(height: 20),
          GenderDropdown(),
          SizedBox(height: 20),
          CustomField(hint: 'Email', selectedIcon: Icon(Icons.email)),
          SizedBox(height: 20),
          CustomField(
              hint: 'Date Of Birth', selectedIcon: Icon(Icons.calendar_month)),
          SizedBox(height: 20),
          CustomField(hint: 'Address', selectedIcon: Icon(Icons.location_on)),
          SizedBox(height: 20),
          CustomField(
              hint: 'Patient ID',
              selectedIcon: Icon(Icons.camera_front_rounded)),
          SizedBox(height: 20),
          CustomField(hint: 'Phone Number', selectedIcon: Icon(Icons.phone)),
          SizedBox(height: 20),
        ],
      )),
    );
  }
}

// ElevatedButton(
//   onPressed: () {
//     Navigator.pop(context);
//   },
//   child: Text('Go back'),
// )
