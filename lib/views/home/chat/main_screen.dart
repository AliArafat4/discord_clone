import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';
import '../home_exports.dart';
import 'components/chat_screen.dart';

class MainScreen extends StatelessWidget {
  static String routeName = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isVisible.value = false;
    });
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: const Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: ChatScreen(),
      ),
    );
  }
}
