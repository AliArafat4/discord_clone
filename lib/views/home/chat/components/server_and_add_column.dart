import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class ServerAndAddColumn extends StatelessWidget {
  const ServerAndAddColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration:
              BoxDecoration(color: buttonBlueColor, borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(
            color: greyTextColor,
            thickness: 0.05,
          ),
        ),
        Container(
          decoration:
              BoxDecoration(color: buttonDarkGreyColor, borderRadius: BorderRadius.circular(30)),
          child: IconButton(
            color: Colors.green,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
        height8,
        Container(
          decoration:
              BoxDecoration(color: buttonDarkGreyColor, borderRadius: BorderRadius.circular(30)),
          child: IconButton(
            color: Colors.green,
            onPressed: () {},
            icon: const Icon(Icons.device_hub_rounded),
          ),
        ),
      ],
    );
  }
}
