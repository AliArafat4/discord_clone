import 'package:discord_clone/views/home/home_exports.dart';
import 'package:flutter/material.dart';

import 'components/explore_images_row.dart';
import 'components/explore_prevoius_channels.dart';
import 'components/explore_text_field.dart';

void exploreBottomSheet(BuildContext context) {
  showModalBottomSheet(
      showDragHandle: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      isScrollControlled: true,
      constraints: BoxConstraints(maxHeight: context.getHeightSize() * .75),
      isDismissible: true,
      backgroundColor: scaffoldBackgroundColor,
      context: context,
      builder: (context) {
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExploreTextField(content: "Where would you like to go?"),
            height8,
            ExploreImagesRow(),
            Divider(
              thickness: 0.05,
              color: greyTextColor,
            ),
            //TODO: MAKE IT CUSTOM
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "PREVIOUS CHANNELS",
                  style: TextStyle(
                    color: greyTextColor,
                    fontSize: fontSize15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ExplorePreviousChannels(),
            )
          ],
        );
      });
}
