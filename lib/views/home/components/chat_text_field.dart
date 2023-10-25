
import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: TextInputType.text,
        textAlign: TextAlign.start,
        style: const TextStyle(color: whiteTextColor),
        textAlignVertical: TextAlignVertical.bottom,
        cursorColor: greyTextColor,
        decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.emoji_emotions_rounded,
              color: Colors.white,
              size: 30,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.transparent)),
            filled: true,
            hintText: "Message @Name",
            hintStyle: const TextStyle(
                color: greyTextColor,
                fontSize: fontSize18,
                fontWeight: FontWeight.w400),
            fillColor: darkTextColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.transparent))),
      ),
    );
  }
}

