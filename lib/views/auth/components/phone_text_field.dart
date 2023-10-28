import 'package:discord_clone/data/data_exports.dart';
import 'package:discord_clone/views/auth/components/pick_ountry_creen.dart';
import 'package:flutter/material.dart';

import 'auth_exports.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  State<PhoneTextField> createState() => PhoneTextFieldState();
}

class PhoneTextFieldState extends State<PhoneTextField> {
  var selectedCountry = [listOfCountries.first];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 58,
        child: TextField(
          keyboardType: const TextInputType.numberWithOptions(),
          textAlign: TextAlign.start,
          style: const TextStyle(color: whiteTextColor),
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: greyTextColor,
          decoration: InputDecoration(
              prefixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PickCountryScreen(selected: selectedCountry)));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        "${selectedCountry.first.code} ${selectedCountry.first.dial_code}",
                        style: const TextStyle(color: Colors.white, fontSize: fontSize16),
                      ),
                      const VerticalDivider(
                        indent: 6,
                        endIndent: 6,
                        thickness: 0.2,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              counter: const SizedBox(),
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              hintText: widget.content,
              hintStyle: const TextStyle(
                  color: greyTextColor, fontSize: fontSize18, fontWeight: FontWeight.w400),
              fillColor: darkTextColor,
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
