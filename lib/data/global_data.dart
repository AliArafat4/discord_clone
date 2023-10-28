import 'package:discord_clone/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../model/friends_model.dart';
import '../model/countries_model.dart';

final List<Friends> listOfFriends = [];
ValueNotifier<Friends> chattingWith =
    ValueNotifier<Friends>(listOfFriends.first);

final List<Countries> listOfCountries = [];
ValueNotifier<Countries> selectedCountry =
    ValueNotifier<Countries>(listOfCountries.first);

List<Map<String, Color>> statusColor = [
  {
    "online": Colors.green,
    "idle": Colors.yellow,
    "don't disturb": Colors.red,
    "invisible": offlineColor,
  }
];
