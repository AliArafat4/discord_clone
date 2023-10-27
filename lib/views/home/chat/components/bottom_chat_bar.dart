import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';

class BottomChatBar extends StatelessWidget {
  const BottomChatBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      width: context.getWidthSize(),
      height: 60,
      decoration: const BoxDecoration(
          color: scaffoldBackgroundColor, border: Border(top: BorderSide(color: Colors.black))),
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
    );
  }
}
