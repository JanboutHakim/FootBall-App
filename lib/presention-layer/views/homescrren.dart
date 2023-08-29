import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customsnaplist.dart';

import 'package:flutter_application_1/presention-layer/home_widgets/customappbar.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/custombuttonnavbar.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/matchschule.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor1,
        body: ListView(
          children: [
            const CustomAppBar(),
            CustomSnapList(width: MediaQuery.of(context).size.width - 36),
            const MatchSchule(),
            const News()
          ],
        ),
        bottomNavigationBar: const CustomBottomNavBar());
  }
}
