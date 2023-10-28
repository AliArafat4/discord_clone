import 'package:flutter/material.dart';

import '../../../data/data_exports.dart';
import '../../../utilities/utilities_exports.dart';

class UserAvatarWithStatus extends StatelessWidget {
  const UserAvatarWithStatus({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          foregroundImage: AssetImage(
            listOfFriends[index].avatar,
          ),
          radius: 25,
        ),
        Positioned(
          right: -3,
          bottom: 1,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: scaffoldBackgroundColor,
            child: CircleAvatar(
              backgroundColor:
                  statusColor.map((e) => e[listOfFriends[index].status]).first,
              radius: 5,
            ),
          ),
        )
      ],
    );
  }
}
