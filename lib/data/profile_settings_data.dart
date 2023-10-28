import 'package:discord_clone/data/data_exports.dart';
import 'package:flutter/material.dart';

import 'package:discord_clone/utilities/utilities_exports.dart';

List<Map> profileSettings = [
  {
    "leading": const Icon(Icons.person, color: greyTextColor),
    "title": Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Set Status",
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 8,
              backgroundColor: scaffoldBackgroundColor,
              child: CircleAvatar(
                backgroundColor:
                    statusColor.map((e) => e[currentUser["status"]]).first,
                radius: 5,
              ),
            ),
            width8,
            Text(
              currentUser['status'],
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  },
  {
    "leading": const Icon(Icons.flag_circle_outlined, color: buttonBlueColor),
    "title": const Text(
      "Get Nitro",
      style: TextStyle(color: buttonBlueColor),
    ),
  },
  {
    "leading": const Icon(Icons.person_pin_rounded, color: greyTextColor),
    "title": const Text(
      "Account",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.edit, color: greyTextColor),
    "title": const Text(
      "Profiles",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.shield, color: greyTextColor),
    "title": const Text(
      "Privacy & Safety",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.people, color: greyTextColor),
    "title": const Text(
      "Family Center",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.vpn_key, color: greyTextColor),
    "title": const Text(
      "Authorized Apps",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.monitor, color: greyTextColor),
    "title": const Text(
      "Devices",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.devices, color: greyTextColor),
    "title": const Text(
      "Connections",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.person_pin_rounded, color: greyTextColor),
    "title": const Text(
      "Friends Requests",
      style: TextStyle(color: Colors.white),
    ),
  },
  {
    "leading": const Icon(Icons.qr_code_2, color: greyTextColor),
    "title": const Text(
      "Scan QR Code",
      style: TextStyle(color: Colors.white),
    ),
  },
];
