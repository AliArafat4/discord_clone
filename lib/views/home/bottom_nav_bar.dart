import 'package:discord_clone/views/home/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../model/friends_model.dart';
import '../../utilities/data/friends_data_set.dart';
import '../../utilities/data/global_data.dart';
import '../auth/components/auth_exports.dart';
import 'components/home_exports.dart';
import 'explore_screen.dart';
import 'friends_screen.dart';
import 'main_screen.dart';
import 'notifications_screen.dart';

class BottomNavBar extends StatefulWidget {
  static String routeName = '/navBar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

List<Widget> screensList = [
  MainScreen(),
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
                      imagePath: "assets/images/Profile_Picture_Kafka.png",
                      onPressedFunc: () {
                        selectedIndex = 4;
                        setState(() {});
                      },
                      userStatus: 'idle',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: screensList[selectedIndex],
    );
  }
}
