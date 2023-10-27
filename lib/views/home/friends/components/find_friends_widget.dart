import 'package:flutter/material.dart';

import '../../../../utilities/constants/colors.dart';

class FindFriendsWidget extends StatelessWidget {
  const FindFriendsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: const BoxDecoration(
          color: offlineColor,
        ),
        child: const ListTile(
          leading: CircleAvatar(
            backgroundColor: lightBlueTextColor,
            child: Icon(
              Icons.phone_iphone_outlined,
              color: Colors.purple,
            ),
          ),
          title: Text(
            "Find Your Friends",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text("Sync your contacts and start chatting.",
              style: TextStyle(color: greyTextColor)),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
