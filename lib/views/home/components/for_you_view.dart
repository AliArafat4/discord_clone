import 'package:discord_clone/utilities/constants/colors.dart';
import 'package:discord_clone/utilities/custom_icons/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/constants/sizes.dart';

class ForYouView extends StatelessWidget {
  const ForYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                // child: Row(
                //   children: [
                //     Icon(
                //       MyFlutterApp.broadcast_signal,
                //       color: Colors.green,
                //     ),
                //     Text(
                //       " Active Now",
                //       style: TextStyle(
                //         color: greyTextColor,
                //         fontSize: fontSize15,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
