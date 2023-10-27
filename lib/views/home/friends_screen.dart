import 'package:discord_clone/model/friends_model.dart';
import 'package:discord_clone/utilities/extensions/size_extension.dart';
import 'package:discord_clone/views/home/components/home_exports.dart';
import 'package:flutter/material.dart';
import '../../utilities/data/global_data.dart';
import 'components/home_exports.dart';
import 'list_all_friends.dart';

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
            MainActionsAppBarIcons(
                iconData: Icons.chat_bubble, onPressedFunc: () {}),
            MainActionsAppBarIcons(
                iconData: Icons.person_add_alt_rounded, onPressedFunc: () {}),
            MainActionsAppBarIcons(
                iconData: Icons.phone_iphone_outlined, onPressedFunc: () {}),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.getWidthSize(),
          height: context.getHeightSize() * 1.05,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: offlineColor,
                  ),
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: lightBlueTextColor,
                      child: Icon(
                        Icons.phone_iphone_outlined,
                        color: Colors.purple,
                      ),
                    ),
                    title: Text(
                      "Find Your Friends",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text("Sync your contacts and start chatting.",
                        style: TextStyle(color: greyTextColor)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16),
                child: Text(
                  "ONLINE -- ${listOfFriends.length}",
                  style: const TextStyle(color: greyTextColor),
                ),
              ),
              const Expanded(
                child: ListAllFriends(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
