import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customsnaplist.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customappbar.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/custombuttonnavbar.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/matchschule.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/news.dart';
import 'package:flutter_application_1/presention-layer/views/HomePage.dart';

int index = 0;

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
          children: [const CustomAppBar(), HomePage()],
        ),
        bottomNavigationBar: const CustomBottomNavBar());
  }
}
