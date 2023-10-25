import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';

class MainActionsAppBarIcons extends StatelessWidget {
  const MainActionsAppBarIcons({
    super.key,
    required this.iconData,
    this.onPressedFunc,
  });

  final IconData iconData;
  final Function()? onPressedFunc;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 5,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      onPressed: onPressedFunc,
      child: Icon(
        iconData,
        color: greyTextColor,
        size: 28,
      ),
    );
  }
}
