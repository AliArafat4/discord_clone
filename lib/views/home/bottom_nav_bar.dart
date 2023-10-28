import 'package:discord_clone/views/home/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import 'home_exports.dart';
import 'explore/explore_screen.dart';
import 'chat/main_screen.dart';
import 'notifications/notifications_screen.dart';

class BottomNavBar extends StatefulWidget {
  static String routeName = '/navBar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

List<Widget> screensList = [
  const MainScreen(),
  const FriendsScreen(),
  const SizedBox(),
  const NotificationsScreen(),
  const ProfileScreen(),
];
int selectedIndex = 0;

List<IconData> iconsList = [
  Icons.discord,
  MyFlutterApp.personHand,
  Icons.search_outlined,
  Icons.notifications_rounded,
];

ValueNotifier<bool> isVisible = ValueNotifier<bool>(false);

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    for (var item in friendsDataSet) {
      listOfFriends.add(Friends.fromJson(item));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: scaffoldBackgroundColor,
      body: screensList[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ValueListenableBuilder<bool>(
        valueListenable: isVisible,
        builder: (context, value, child) => Visibility(
          visible: (value) ? true : false,
          child: BottomAppBar(
            height: 50,
            color: darkTextColor,
            child: SizedBox(
              child: Row(
                children: [
                  ...List.generate(
                    iconsList.length,
                    (index) => Expanded(
                      child: BottomAppBarIcons(
                        isSelected: (selectedIndex == index),
                        icon: iconsList[index],
                        func: () {
                          if (index == 2) {
                            exploreBottomSheet(context);
                          } else {
                            selectedIndex = index;
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: UserAvatar(
                      imagePath: currentUser["avatar"],
                      onPressedFunc: () {
                        selectedIndex = iconsList.length;
                        setState(() {});
                      },
                      userStatus: currentUser["status"],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
