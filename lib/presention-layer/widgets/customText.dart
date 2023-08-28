import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/helpers/styles.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: setStyleText(22),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: GoogleFonts.poppins(fontSize: 18, color: primarycolor2),
            )),
      ],
    );
  }
}
