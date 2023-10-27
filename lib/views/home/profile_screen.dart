import 'package:discord_clone/utilities/constants/colors.dart';
import 'package:discord_clone/utilities/extensions/size_extension.dart';
import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';

import '../../utilities/data/global_data.dart';
import '../../utilities/data/profile_settings_data.dart';
import '../../utilities/data/user_data_set.dart';
import 'components/user_avatar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      width: context.getWidthSize(),
                      height: context.getHeightSize() * .18,
                      color: const Color(0xFF995099),
                    ),
                    Container(
                      width: context.getWidthSize(),
                      height: context.getHeightSize() * .15,
                      color: Colors.black,
                    ),
                  ],
                ),
                Positioned(
                  top: context.getHeightSize() * .13,
                  left: context.getWidthSize() * .06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const UserProfilePicture(),
                      Text(
                        currentUser["name"],
                        style: const TextStyle(
                            color: Colors.white, fontSize: fontSize22, fontWeight: FontWeight.w500),
                      ),
                      height24,
                      Text(
                        currentUser["custom_status"],
                        style: const TextStyle(
                            color: greyTextColor,
                            fontSize: fontSize12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height8,
            ListView.builder(
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
                    )),
          ],
        ),
      ),
    );
  }
}

class UserProfilePicture extends StatelessWidget {
  const UserProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 42,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(currentUser["avatar"]),
            radius: 40,
          ),
        ),
        Positioned(
          right: 4,
          bottom: 4,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor: statusColor.map((e) => e[currentUser["status"]]).first,
              radius: 5,
            ),
          ),
        ),
      ],
    );
  }
}
