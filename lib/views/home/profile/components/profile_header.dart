import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

import 'user_profile_picture.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              width: context.getWidthSize(),
              height: context.getHeightSize() * .18,
              color: const Color(0xFF995099),
            ),
            Container(
              width: context.getWidthSize(),
              height: context.getHeightSize() * .15,
              color: Colors.black,
            ),
          ],
        ),
        Positioned(
          top: context.getHeightSize() * .13,
          left: context.getWidthSize() * .06,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserProfilePicture(),
              Text(
                currentUser["name"],
                style: const TextStyle(
                    color: Colors.white, fontSize: fontSize22, fontWeight: FontWeight.w500),
              ),
              height24,
              Text(
                currentUser["custom_status"],
                style: const TextStyle(
                    color: greyTextColor, fontSize: fontSize12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
