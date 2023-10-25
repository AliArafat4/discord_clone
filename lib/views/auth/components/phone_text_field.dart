import 'package:flutter/material.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'auth_exports.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({Key? key, required this.content}) : super(key: key);

  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 58,
        child: IntlPhoneField(
          initialCountryCode: "Saudi Arabia",
          showDropdownIcon: false,
          showCountryFlag: false,
          languageCode: "sa",
          pickerDialogStyle: PickerDialogStyle(
            backgroundColor: scaffoldBackgroundColor,
          ),
          keyboardType: const TextInputType.numberWithOptions(),
          textAlign: TextAlign.start,
          style: const TextStyle(color: whiteTextColor),
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: greyTextColor,
          decoration: InputDecoration(
              counter: const SizedBox(),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              hintText: content,
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
