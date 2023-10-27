import 'package:flutter/material.dart';

import '../../utilities/constants/colors.dart';
import '../../utilities/data/global_data.dart';
import 'components/user_avatar.dart';

class ListAllFriends extends StatelessWidget {
  const ListAllFriends({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: listOfFriends.length,
      itemBuilder: (context, index) {
        return Row(children: [
          Expanded(
            child: InkWell(
              highlightColor: darkTextColor,
              splashColor: darkTextColor,
              onTap: () {},
              child: ListTile(
                minLeadingWidth: 0,
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: -10,
                leading: UserAvatar(
                    imagePath: listOfFriends[index].avatar,
                    userStatus: listOfFriends[index].status),
                title: Text(
                  listOfFriends[index].name,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  listOfFriends[index].activity,
                  style: const TextStyle(color: greyTextColor),
                ),
                trailing: const SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                          radius: 18,
                          backgroundColor: offlineColor,
                          child: Icon(
                            Icons.wifi_calling_3_outlined,
                            size: 22,
                            color: greyTextColor,
                          )),
                      CircleAvatar(
                          radius: 18,
                          backgroundColor: offlineColor,
                          child: Icon(
                            Icons.chat_bubble,
                            size: 22,
                            color: greyTextColor,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]);
      },
    );
  }
}
