import 'package:flutter/material.dart';

import 'auth_exports.dart';

class SelectedRegisterMethod extends StatelessWidget {
  const SelectedRegisterMethod({
    super.key,
    required this.content,
    this.authTextField,
    required this.isPhone,
  });

  final String content;
  final AuthTextField? authTextField;
  final bool isPhone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        height24,
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              content,
              style: const TextStyle(
                color: greyTextColor,
                fontSize: fontSize15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        height10,
        (!isPhone) ? authTextField! : PhoneTextField(content: content),
      ],
    );
  }
}
