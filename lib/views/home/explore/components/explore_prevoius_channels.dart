import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class ExplorePreviousChannels extends StatelessWidget {
  const ExplorePreviousChannels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) => height5,
      itemBuilder: (context, index) {
        return ListTile(
          horizontalTitleGap: 0,
          contentPadding: EdgeInsets.zero,
          leading: UserAvatar(size: 35, imagePath: listOfFriends[index].avatar),
          title: Text(
            listOfFriends[index].name,
            style: const TextStyle(color: Colors.white, fontSize: fontSize18),
          ),
        );
      },
    );
  }
}
