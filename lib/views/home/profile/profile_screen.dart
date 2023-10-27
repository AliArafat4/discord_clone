import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';

import 'components/profile_header.dart';
import 'components/profile_settings.dart';

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            height8,
            ProfileSettings(),
            height48,
          ],
        ),
      ),
    );
  }
}
