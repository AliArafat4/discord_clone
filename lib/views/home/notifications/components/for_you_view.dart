import 'package:flutter/material.dart';

import '../../home_exports.dart';

class ForYouView extends StatelessWidget {
  const ForYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Icon(
                      MyFlutterApp.broadcast_signal,
                      color: Colors.green,
                    ),
                    Text(
                      " Active Now",
                      style: TextStyle(
                        color: greyTextColor,
                        fontSize: fontSize15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 0.1,
              color: greyTextColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: SizedBox(
                height: 85,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 210,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        color: buttonDarkGreyColor,
                        elevation: 0,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.games_outlined,
                              size: 80,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.transparent,
                                    foregroundImage: AssetImage(listOfFriends[index].avatar),
                                  )),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listOfFriends[index].name,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: fontSize14),
                                        ),
                                        Text(
                                          listOfFriends[index].activity,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: greyTextColor, fontSize: fontSize12),
                                        ),
                                      ],
                                    ),
                                  )
                                  // Expanded(
                                  //   child: Text(
                                  //     listOfFriends[index].name,
                                  //   ),
                                  // ),
                                  // Expanded(
                                  //   child: Text(
                                  //     listOfFriends[index].activity,
                                  //     maxLines: 1,
                                  //     style: const TextStyle(
                                  //       overflow: TextOverflow.ellipsis,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
