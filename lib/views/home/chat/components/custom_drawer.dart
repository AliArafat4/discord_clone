import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_text_field.dart';
import 'list_chatters.dart';
import 'server_and_add_column.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTextColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: scaffoldBackgroundColor,
        elevation: 0.5,
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 8),
              color: darkTextColor,
              width: 60,
              child: const ServerAndAddColumn(),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(
                    width: 280,
                    child: ListTile(
                      title: const Text(
                        "Direct Messages",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600, fontSize: fontSize16),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mark_chat_unread,
                            color: greyTextColor,
                          )),
                    ),
                  ),
                  const CustomDrawerTextField(),
                  const ListChatters(),
                ],
              ),
            ),
            const VerticalDivider(thickness: 500, color: darkTextColor),
          ],
        ),
      ),
    );
  }
}
