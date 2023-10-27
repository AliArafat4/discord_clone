import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:discord_clone/views/home/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/for_you_view.dart';
import 'components/mentions_view.dart';

class NotificationsScreen extends StatelessWidget {
  static String routeName = '/mentions';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: customAppBar(
          title: const Text("Notification"),
          actions: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Container(
                    height: 32,
                    width: 60,
                    decoration: BoxDecoration(
                        color: darkTextColor, borderRadius: BorderRadius.circular(30)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MyFlutterApp.personHand,
                          color: Colors.white,
                        ),
                        width8,
                        Text("0", style: TextStyle(color: Colors.white)),
                      ],
                    )),
                width8,
                const Icon(
                  Icons.more_horiz,
                  color: greyTextColor,
                )
              ],
            ),
          )),
      body: SizedBox(
        width: context.getWidthSize(),
        child: const Column(
          children: [
            //TODO: try on tab view/view screen if time allows
            SlidingSelector(
                firstSide: ForYouView(),
                secondSide: MentionsView(),
                firstSliderTitle: "For You",
                secondSliderTitle: "Mentions"),
          ],
        ),
      ),
    );
  }
}
