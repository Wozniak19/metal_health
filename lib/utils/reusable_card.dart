// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({super.key, @required this.colour, this.cardChild, this.tapper});
  final Color? colour;
  final Widget? cardChild;
  Function? tapper;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}

void singleTap() {
  GestureDetector(
    onTap: () {},
  );
}
