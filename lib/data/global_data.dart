import 'package:discord_clone/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../model/friends_model.dart';
import '../model/countries_model.dart';

final List<Friends> listOfFriends = [];
final List<Countries> listOfCountries = [];

List<Map<String, Color>> statusColor = [
  {
    "online": Colors.green,
    "idle": Colors.yellow,
    "don't disturb": Colors.red,
    "invisible": offlineColor,
  }
];
