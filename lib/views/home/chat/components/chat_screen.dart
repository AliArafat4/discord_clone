import 'package:flutter/material.dart';
import 'package:overlapping_panels/overlapping_panels.dart';

import '../../bottom_nav_bar.dart';
import 'custom_drawer.dart';
import 'in_chat_info.dart';
import 'main_chat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return OverlappingPanels(
        left: const CustomDrawer(),
        main: const MainChatScreen(),
        right: const InChatInfo(),
        onSideChange: (side) {
          setState(() {
            if (side == RevealSide.left) {
              FocusManager.instance.primaryFocus!.unfocus();
              Future.delayed(const Duration(milliseconds: 60), () => isVisible.value = true);
            } else {
              isVisible.value = false;
            }
          });
        });
  }
}
