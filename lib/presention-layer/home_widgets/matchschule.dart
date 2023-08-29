import 'package:flutter/material.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/commingmatchcard.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customText.dart';

class MatchSchule extends StatelessWidget {
  const MatchSchule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomText(
            text: 'Match Schedule',
          ),
          SizedBox(
              height: 300,
              child: Column(children: [
                CommingMatchCard(),
                CommingMatchCard(),
                CommingMatchCard(),
              ]))
        ],
      ),
    );
  }
}
