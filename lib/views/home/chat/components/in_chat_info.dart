import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';

import '../../widgets/user_avatar_with_status.dart';

class InChatInfo extends StatelessWidget {
  const InChatInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: Row(
          children: [
            const VerticalDivider(thickness: 48, color: darkTextColor),
            width32,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: context.getWidthSize() * .877,
                  decoration: const BoxDecoration(
                      color: lightDarkColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: context.getWidthSize() * .877,
                        child: ListTile(
                          minLeadingWidth: 0,
                          horizontalTitleGap: 3,
                          leading: const Icon(Icons.alternate_email,
                              color: greyTextColor),
                          title: ValueListenableBuilder<Friends>(
                              valueListenable: chattingWith,
                              builder: (context, value, child) {
                                return Text(
                                  chattingWith.value.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSize20),
                                );
                              }),
                          trailing: const Icon(Icons.more_horiz_outlined,
                              color: greyTextColor),
                        ),
                      ),
                      const Divider(
                        thickness: 0.05,
                        color: Colors.white,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InChatInfoIcons(
                              content: "Search", iconData: Icons.search),
                          InChatInfoIcons(
                              content: "Pins", iconData: Icons.push_pin),
                          InChatInfoIcons(
                              content: "Notifications",
                              iconData: Icons.notifications_rounded),
                        ],
                      ),
                      height8,
                    ],
                  ),
                ),
                SizedBox(
                  width: context.getWidthSize() * .877,
                  child: ListTile(
                    leading: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: darkTextColor,
                          borderRadius: BorderRadius.circular(35)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add,
                          color: greyTextColor,
                          size: 20,
                        ),
                      ),
                    ),
                    title: const Text("New Group",
                        style: TextStyle(
                            color: Colors.white, fontSize: fontSize18)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "MEMBERS -- 2",
                        style: TextStyle(color: greyTextColor),
                      ),
                      height5,
                      ValueListenableBuilder<Friends>(
                          valueListenable: chattingWith,
                          builder: (context, value, child) {
                            return Row(
                              children: [
                                UserAvatarWithStatus(
                                    index: getIndex(chattingWith.value.avatar)),
                                width8,
                                Text(
                                  chattingWith.value.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: fontSize16),
                                ),
                              ],
                            );
                          }),
                      height5,
                      Row(
                        children: [
                          UserAvatarWithStatus(
                            index: getIndex(currentUser["name"]),
                          ),
                          width8,
                          Text(
                            currentUser["name"],
                            style: const TextStyle(
                                color: Colors.white, fontSize: fontSize16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

getIndex(String currentUser) {
  int index = 0;
  for (int i = 0; i < listOfFriends.length; i++) {
    if (listOfFriends[i].name.contains(currentUser)) {
      index = i;
    }
    if (listOfFriends[i].avatar.contains(currentUser)) {
      index = i;
    }
  }
  return index;
}

class InChatInfoIcons extends StatelessWidget {
  const InChatInfoIcons({
    super.key,
    required this.iconData,
    required this.content,
  });
  final IconData iconData;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, color: greyTextColor),
        Text(content, style: const TextStyle(color: greyTextColor))
      ],
    );
  }
}
