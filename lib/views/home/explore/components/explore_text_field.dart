import 'package:flutter/material.dart';

import 'package:discord_clone/views/home/home_exports.dart';

class ExploreTextField extends StatelessWidget {
  const ExploreTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: TextField(
          keyboardType: TextInputType.text,
          textAlign: TextAlign.start,
          style: const TextStyle(color: whiteTextColor),
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: greyTextColor,
          decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.search_outlined,
                color: greyTextColor,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.transparent)),
              filled: true,
              hintText: "Where would you like to go?",
              hintStyle: const TextStyle(
                  color: greyTextColor, fontSize: fontSize18, fontWeight: FontWeight.w400),
              fillColor: darkTextColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
