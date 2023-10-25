import 'package:flutter/material.dart';

import 'home_exports.dart';

class BottomAppBarIcons extends StatelessWidget {
  const BottomAppBarIcons({
    super.key,
    required this.icon,
    required this.func,
    required this.isSelected,
  });
  final IconData icon;
  final Function()? func;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 80,
      onPressed: func,
      child: Icon(
        icon,
        color: (isSelected) ? Colors.white : greyTextColor,
        size: 30,
      ),
    );
  }
}
