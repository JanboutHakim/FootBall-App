import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/helpers/styles.dart';

import 'package:flutter_application_1/presention-layer/newswidget/customnewsappbar.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxdecretion = BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Colors.grey);
    const EdgeInsets padding = EdgeInsets.symmetric(vertical: 16.0);
    TextStyle textstyle = GoogleFonts.poppins(
        fontSize: 12.27,
        fontWeight: FontWeight.bold,
        textBaseline: TextBaseline.ideographic,
        color: Colors.white);
    return Scaffold(
        backgroundColor: primarycolor1,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const CustomNewsappbar(),
              Padding(
                padding: padding,
                child: Text(
                  'Barcelona 3-3 Manchester City: Julian Alvarez and Riyad Mahrez Scrore',
                  style: setStyleText(15.7),
                ),
              ),
              Padding(
                padding: padding,
                child: Container(height: 200, decoration: boxdecretion),
              ),
              Padding(
                padding: padding,
                child: Text(
                  'New Winning era FC manager Hano is reportedly interested in making Senja FC midfielder Samuel Marae his first signing in the June transfer window.As is known, the 31-year-old player has returned to be an important part of the White throughout the 2021/2022 season. He has made 40 appearances in all competitions, contributing two goals and five assists.Samule Marae current contract at Mandala Stadium expires in June. In recent weeks there has been speculation surrounding the Meranomi international\'s future.New Winning era FC manager Hano is reportedly interested in making Senja FC midfielder Samuel Marae his first signing in the June transfer window.As is known, the 31-year-old player has returned to be an important part of the White throughout the 2021/2022 season. He has made 40 appearances in all competitions, contributing two goals and five assists.Samule Marae current contract at Mandala Stadium expires in June. In recent weeks there has been speculation surrounding the Meranomi internationals future',
                  style: textstyle,
                ),
              )
            ],
          ),
        ));
  }
}
