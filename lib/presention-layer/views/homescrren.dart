import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/presention-layer/widgets/customsnaplist.dart';

import 'package:flutter_application_1/presention-layer/widgets/customappbar.dart';
import 'package:flutter_application_1/presention-layer/widgets/custombuttonnavbar.dart';
import 'package:flutter_application_1/presention-layer/widgets/matchschule.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: primarycolor1,
        body: Column(
          children: [CustomAppBar(), CustomSnapList(), MatchSchule()],
        ),
        bottomNavigationBar: CustomBottomNavBar());
  }
}
