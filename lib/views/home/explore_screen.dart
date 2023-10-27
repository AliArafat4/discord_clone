import 'package:discord_clone/utilities/constants/sizes.dart';
import 'package:discord_clone/utilities/data/global_data.dart';
import 'package:discord_clone/utilities/extensions/size_extension.dart';
import 'package:discord_clone/views/home/components/home_exports.dart';
import 'package:flutter/material.dart';

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
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: whiteTextColor),
                  textAlignVertical: TextAlignVertical.bottom,
                  cursorColor: greyTextColor,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        color: greyTextColor,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent)),
                      filled: true,
                      hintText: "Where would you like to go?",
                      hintStyle: const TextStyle(
                          color: greyTextColor,
                          fontSize: fontSize18,
                          fontWeight: FontWeight.w400),
                      fillColor: darkTextColor,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              const BorderSide(color: Colors.transparent))),
                ),
              ),
            ),
            height8,
            SizedBox(
              height: 60,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listOfFriends.length,
                separatorBuilder: (context, index) => width8,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.transparent,
                      foregroundImage: AssetImage(
                        listOfFriends[index].avatar,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(
              thickness: 0.05,
              color: greyTextColor,
            ),
            //TODO: MAKE IT CUSTOM
            const Align(
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
            //TODO: ADD PREVIOUS?
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (context, index) => height5,
                itemBuilder: (context, index) {
                  return ListTile(
                    horizontalTitleGap: 0,
                    contentPadding: EdgeInsets.zero,
                    leading: UserAvatar(
                        size: 35, imagePath: listOfFriends[index].avatar),
                    title: Text(
                      listOfFriends[index].name,
                      style: const TextStyle(
                          color: Colors.white, fontSize: fontSize18),
                    ),
                  );
                },
              ),
            )
          ],
        );
      });
}
