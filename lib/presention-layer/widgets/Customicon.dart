import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/mycolors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
  final selectedColor = secondrycolor3;
  final unselectedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 42,
    );
  }
}
