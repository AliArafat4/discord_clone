import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';

AppBar customAppBar({Widget? title, Widget actions = const SizedBox()}) {
  return AppBar(
    backgroundColor: scaffoldBackgroundColor,
    elevation: 0.5,
    title: title,
    actions: [actions],
  );
}
