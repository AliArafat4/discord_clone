import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: profileSettings.length,
        itemBuilder: (context, index) => InkWell(
              highlightColor: buttonDarkGreyColor,
              splashColor: buttonDarkGreyColor,
              onTap: () {},
              child: ListTile(
                horizontalTitleGap: 0,
                leading: profileSettings[index]['leading'],
                title: profileSettings[index]['title'],
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ));
  }
}
