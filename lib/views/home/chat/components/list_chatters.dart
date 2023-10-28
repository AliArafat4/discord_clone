import 'package:flutter/material.dart';
import 'package:discord_clone/views/home/home_exports.dart';

class ListChatters extends StatelessWidget {
  const ListChatters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    int selected = 0;
    return SingleChildScrollView(
      child: SizedBox(
        width: 250,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listOfFriends.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: (focusNode.hasFocus && index == selected)
                        ? highlightColor
                        : Colors.transparent),
                child: InkWell(
                  focusNode: focusNode,
                  highlightColor: highlightColor,
                  splashColor: highlightColor,
                  onTap: () {
                    selected = index;
                    focusNode.unfocus();
                    Future.delayed(const Duration(microseconds: 60), () {
                      FocusScope.of(context).requestFocus(focusNode);
                    });
                    chattingWith.value = listOfFriends[index];
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 20,
                    leading: SizedBox(
                      width: 40,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundImage: AssetImage(
                              listOfFriends[index].avatar,
                            ),
                            radius: 25,
                          ),
                          Positioned(
                            right: -3,
                            bottom: 1,
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: scaffoldBackgroundColor,
                              child: CircleAvatar(
                                backgroundColor: statusColor
                                    .map((e) => e[listOfFriends[index].status])
                                    .first,
                                radius: 5,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    title: Text(
                      listOfFriends[index].name,
                      style: const TextStyle(
                          color: Colors.white, fontSize: fontSize16),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
