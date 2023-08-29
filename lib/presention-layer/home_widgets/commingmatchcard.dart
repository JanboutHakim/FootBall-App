import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/helpers/styles.dart';

class CommingMatchCard extends StatefulWidget {
  const CommingMatchCard({super.key});

  @override
  State<CommingMatchCard> createState() => _CommingMatchCardState();
}

class _CommingMatchCardState extends State<CommingMatchCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: secondrycolor1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Juventus',
              style: setStyleText(12),
            ),
            Image.asset(
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                "assets/images/juventus.png"),
            Column(
              children: [
                Text(
                  '27 Aufoust 2023',
                  style: setStyleText(8),
                ),
                Text(
                  '10:00',
                  style: setStyleText(8),
                ),
              ],
            ),
            Image.asset(
                width: 50,
                height: 50,
                fit: BoxFit.contain,
                "assets/images/juventus.png"),
            Text(
              'Juventus',
              style: setStyleText(12),
            )
          ],
        ),
      ),
    );
  }
}
