import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard(
      {super.key,
      required this.imagePath,
      required this.rating,
      required this.docName,
      required this.docTitle});

  final String imagePath;
  final String rating;
  final String docName;
  final String docTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            //pic of doc
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                height: 50,
              ),
            ),
            const SizedBox(height: 10),
            //rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10),
            //doc name
            Text(
              docName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            //doc title
            Text(docTitle),
          ],
        ),
      ),
    );
  }
}
