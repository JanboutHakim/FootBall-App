import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/styles.dart';
import 'package:flutter_application_1/presention-layer/home_widgets/Customicon.dart';

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
              iconSize: 48,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const CustomIcon(icon: Icons.arrow_back_ios)),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Text(
                  'Football News',
                  style: setStyleText(24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
