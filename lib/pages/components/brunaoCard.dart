import 'package:checkpoint2/pages/components/brunaoText.dart';
import 'package:flutter/material.dart';

class BrunaoCard extends StatelessWidget {
  final String nameText;
  final String yearText;
  final String authorText;
  final String assessmentText;

  BrunaoCard(
      {required this.nameText,
      required this.yearText,
      required this.authorText,
      required this.assessmentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 34, 245, 231), width: 4),
      ),
      child: Row(
        children: [
          BrunaoText(nameText),
          Spacer(),
          BrunaoText(yearText),
          Spacer(),
          BrunaoText(authorText),
          Spacer(),
          BrunaoText(assessmentText),
        ],
      ),
    );
  }
}
