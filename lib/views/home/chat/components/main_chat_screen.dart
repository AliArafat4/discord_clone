import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';
import 'package:overlapping_panels/overlapping_panels.dart';

class MainChatScreen extends StatelessWidget {
  const MainChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      drawerEdgeDragWidth: context.getWidthSize() * .5,
      endDrawer: const Drawer(backgroundColor: scaffoldBackgroundColor),
      appBar: customAppBar(
          title: ValueListenableBuilder<Friends>(
              valueListenable: chattingWith,
              builder: (context, value, child) {
                return Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      onPressed: () {
                        OverlappingPanels.of(context)?.reveal(RevealSide.left);
                      },
                      icon: const Icon(Icons.menu, color: greyTextColor),
                    ),
                    const Icon(Icons.alternate_email, color: greyTextColor),
                    width8,
                    Text(chattingWith.value.name,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20)),
                    width8,
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: statusColor
                              .map((e) => e[chattingWith.value.status])
                              .first,
                          radius: 7,
                        ),
                        Positioned(
                          bottom: 3,
                          right: 3,
                          child: CircleAvatar(
                            backgroundColor:
                                (chattingWith.value.status == "invisible")
                                    ? scaffoldBackgroundColor
                                    : Colors.transparent,
                            radius: 4,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
          actions: Row(
            children: [
              const MainActionsAppBarIcons(
                  iconData: Icons.wifi_calling_3_rounded),
              const MainActionsAppBarIcons(iconData: Icons.videocam_rounded),
              MainActionsAppBarIcons(
                  iconData: Icons.people,
                  onPressedFunc: () {
                    OverlappingPanels.of(context)?.reveal(RevealSide.right);
                  }),
            ],
          )),
      body: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            width: context.getWidthSize(),
            height: 60,
            decoration: const BoxDecoration(
                color: scaffoldBackgroundColor,
                border: Border(top: BorderSide(color: Colors.black))),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ChatIcons(iconData: Icons.add),
                width8,
                ChatIcons(iconData: Icons.card_giftcard),
                width8,
                Expanded(child: ChatTextField()),
                width8,
                ChatIcons(iconData: Icons.mic_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
