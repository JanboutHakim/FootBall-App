import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/styles.dart';
import 'package:flutter_application_1/presention-layer/widgets/Customicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomIcon(icon: Icons.list),
          Text(
            'Live Score',
            style: setStyleText(),
          ),
          const CustomIcon(icon: Icons.notifications)
        ],
      ),
    );
  }
}
