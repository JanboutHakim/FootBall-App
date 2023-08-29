import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';
import 'package:flutter_application_1/helpers/styles.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/customText.dart';
import 'package:google_fonts/google_fonts.dart';

class StandingPage extends StatelessWidget {
  const StandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26.0),
              child: Text(
                'Live Score',
                style: setStyleText(24),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: secondrycolor1,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const CustomText(text: 'Standing Table'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Club',
                          style: GoogleFonts.poppins(
                              fontSize: 12.27, fontWeight: FontWeight.bold),
                        ),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSmallText(
                                text: 'W',
                              ),
                              CustomSmallText(
                                text: 'D',
                              ),
                              CustomSmallText(
                                text: 'L',
                              ),
                              CustomSmallText(
                                text: 'Poin',
                              ),
                            ])
                      ],
                    ),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.blue[400],
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                        ),
                                        Image.asset(
                                          'assets/images/juventus.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                        Text(
                                          'Juventus',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12.27,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomSmallText(
                                            text: '1', //wins
                                          ),
                                          CustomSmallText(
                                            text: '1', //Deals
                                          ),
                                          CustomSmallText(
                                            text: '0', //lose
                                          ),
                                          CustomSmallText(
                                            text: '4', //ponts
                                          ),
                                        ])
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) =>
                              const Divider(thickness: 4),
                          itemCount: 5),
                    ),
                  ]),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        text,
        style:
            GoogleFonts.poppins(fontSize: 12.27, fontWeight: FontWeight.bold),
      ),
    );
  }
}
