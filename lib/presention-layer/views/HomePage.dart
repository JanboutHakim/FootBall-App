import 'package:flutter/material.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customsnaplist.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/matchschule.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CustomSnapList(width: MediaQuery.of(context).size.width - 36),
          const MatchSchule(),
          const News()
        ],
      ),
    );
  }
}
