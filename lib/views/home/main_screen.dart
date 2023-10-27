import 'package:discord_clone/model/friends_model.dart';
import 'package:discord_clone/utilities/data/friends_data_set.dart';
import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import 'components/home_exports.dart';

class MainScreen extends StatelessWidget {
  static String routeName = '/main';

  MainScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isVisible.value = false;
    });
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: scaffoldBackgroundColor,
        drawerEdgeDragWidth: context.getWidthSize() * .5,
        drawer: const Drawer(backgroundColor: scaffoldBackgroundColor),
        endDrawer: const Drawer(backgroundColor: scaffoldBackgroundColor),
        onDrawerChanged: (isOpened) {
          if (MediaQuery.of(context).viewInsets.bottom != 0.0) {
            FocusManager.instance.primaryFocus!.unfocus();
          }

          Future.delayed(const Duration(milliseconds: 100), () => isVisible.value = isOpened);
        },
        appBar: customAppBar(
            title: const Row(
              children: [
                Icon(Icons.alternate_email, color: greyTextColor),
                width8,
                Text("Name", style: TextStyle(color: Colors.white, fontSize: 20)),
                width8,
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: offlineColor,
                      radius: 7,
                    ),
                    Positioned(
                      bottom: 3,
                      right: 3,
                      child: CircleAvatar(
                        backgroundColor: scaffoldBackgroundColor,
                        radius: 4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: Row(
              children: [
                const MainActionsAppBarIcons(iconData: Icons.wifi_calling_3_rounded),
                const MainActionsAppBarIcons(iconData: Icons.videocam_rounded),
                MainActionsAppBarIcons(
                    iconData: Icons.people,
                    onPressedFunc: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    }),
              ],
            )),
        body: const Column(
          children: [
            Spacer(),
            BottomChatBar(),
          ],
        ),
      ),
    );
  }
}
