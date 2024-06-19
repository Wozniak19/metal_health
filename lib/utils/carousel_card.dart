import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String mhd_Type;
  final int Num_Of_Days;
  final int mhd_Cases;

  const CarouselCard(
      {super.key, required this.mhd_Type,
      required this.Num_Of_Days,
      required this.mhd_Cases});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius:
              BorderRadius.circular(12.0), // Optional for rounded corners
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  mhd_Type,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                Text('$Num_Of_Days days')
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              '$mhd_Cases cases',
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ));
  }
}
