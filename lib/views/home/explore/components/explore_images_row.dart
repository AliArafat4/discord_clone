import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class ExploreImagesRow extends StatelessWidget {
  const ExploreImagesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listOfFriends.length,
        separatorBuilder: (context, index) => width8,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.transparent,
              foregroundImage: AssetImage(
                listOfFriends[index].avatar,
              ),
            ),
          );
        },
      ),
    );
  }
}
