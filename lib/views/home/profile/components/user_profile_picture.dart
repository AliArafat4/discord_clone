import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 42,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(currentUser["avatar"]),
            radius: 40,
          ),
        ),
        Positioned(
          right: 4,
          bottom: 4,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor: statusColor.map((e) => e[currentUser["status"]]).first,
              radius: 5,
            ),
          ),
        ),
      ],
    );
  }
}
