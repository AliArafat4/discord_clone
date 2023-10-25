import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';

class ChatIcons extends StatelessWidget {
  const ChatIcons({
    super.key,
    required this.iconData,
  });

  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: darkTextColor,
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: Colors.white,
          )),
    );
  }
}
