import 'package:discord_clone/model/friends_model.dart';
import 'package:discord_clone/views/home/components/home_exports.dart';
import 'package:flutter/material.dart';
import '../../utilities/data/global_data.dart';
import 'components/home_exports.dart';

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
      body: Column(
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
          Expanded(
            child: ListView.builder(
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
            ),
          )
        ],
      ),
    );
  }
}
