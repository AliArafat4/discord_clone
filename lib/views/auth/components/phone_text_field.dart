import 'package:discord_clone/data/data_exports.dart';
import 'package:discord_clone/views/auth/components/pick_country_screen.dart';
import 'package:flutter/material.dart';

import '../../../model/countries_model.dart';
import 'auth_exports.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
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
                          builder: (context) => const PickCountryScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: 90,
                    child: Row(
                      children: [
                        ValueListenableBuilder<Countries>(
                            valueListenable: selectedCountry,
                            builder: (context, value, child) {
                              return Text(
                                "${selectedCountry.value.code} ${selectedCountry.value.dial_code}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: fontSize16),
                              );
                            }),
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
              ),
              counter: const SizedBox(),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              hintText: widget.content,
              hintStyle: const TextStyle(
                  color: greyTextColor,
                  fontSize: fontSize18,
                  fontWeight: FontWeight.w400),
              fillColor: darkTextColor,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}
