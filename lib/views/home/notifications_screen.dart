import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:discord_clone/views/auth/components/selected_register_method.dart';
import 'package:discord_clone/views/home/components/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/for_you_view.dart';
import 'components/mentions_view.dart';

class NotificationsScreen extends StatefulWidget {
  static String routeName = '/mentions';
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

PageController controller = PageController();

class _NotificationsScreenState extends State<NotificationsScreen> {
  int? groupValue = 0;
  List<Widget> selection = [];
  @override
  void initState() {
    selection = const [ForYouView(), MentionsView()];
    super.initState();
  }

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
                        color: darkTextColor,
                        borderRadius: BorderRadius.circular(30)),
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
        child: Column(
          children: [
            //TODO: try on tab view/view screen if time allows
            CupertinoSlidingSegmentedControl(
                thumbColor: buttonDarkGreyColor,
                groupValue: groupValue,
                backgroundColor: darkTextColor,
                onValueChanged: (value) {
                  groupValue = value;
                  setState(() {});
                },
                children: {
                  0: SizedBox(
                    width: context.getWidthSize() * .4,
                    child: const Center(
                      child: Text(
                        "For You",
                        style: TextStyle(color: whiteTextColor),
                      ),
                    ),
                  ),
                  1: SizedBox(
                    width: context.getWidthSize() * .4,
                    child: const Center(
                      child: Text(
                        "Mentions",
                        style: TextStyle(color: whiteTextColor),
                      ),
                    ),
                  )
                }),
            selection[groupValue!],
          ],
        ),
      ),
    );
  }
}
