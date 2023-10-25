import 'package:discord_clone/utilities/constants/colors.dart';
import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';

import '../../../utilities/data/global_data.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.onPressedFunc,
    required this.imagePath,
    required this.userStatus,
  });
  final Function()? onPressedFunc;
  final String imagePath;
  final String userStatus;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 100,
      onPressed: onPressedFunc,
      child: SizedBox(
        width: 40,
        child: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundImage: AssetImage(imagePath),
              radius: 25,
            ),
            Positioned(
              right: -3,
              bottom: 1,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: scaffoldBackgroundColor,
                child: CircleAvatar(
                  backgroundColor: statusColor.map((e) => e[userStatus]).first,
                  radius: 5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
