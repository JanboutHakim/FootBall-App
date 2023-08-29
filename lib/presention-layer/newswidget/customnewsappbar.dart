import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/styles.dart';

class CustomNewsappbar extends StatelessWidget {
  const CustomNewsappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              iconSize: 26,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  'Football News',
                  style: setStyleText(17.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
