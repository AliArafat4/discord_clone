import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';

import 'components/find_friends_widget.dart';
import 'components/list_all_friends.dart';

class FriendsScreen extends StatelessWidget {
  static String routeName = '/friends';
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: customAppBar(
        title: const Text("Friends"),
        actions: Row(
          children: [
            MainActionsAppBarIcons(iconData: Icons.chat_bubble, onPressedFunc: () {}),
            MainActionsAppBarIcons(iconData: Icons.person_add_alt_rounded, onPressedFunc: () {}),
            MainActionsAppBarIcons(iconData: Icons.phone_iphone_outlined, onPressedFunc: () {}),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FindFriendsWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16),
                child: Text(
                  "ONLINE -- ${listOfFriends.length}",
                  style: const TextStyle(color: greyTextColor),
                ),
              ),
              const ListAllFriends()
            ],
          ),
        ),
      ),
    );
  }
}
