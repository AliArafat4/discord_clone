import 'package:flutter/cupertino.dart';

import 'auth_exports.dart';
import 'selected_register_method.dart';

class SlidingSelector extends StatefulWidget {
  const SlidingSelector({
    super.key,
  });

  @override
  State<SlidingSelector> createState() => _SlidingSelectorState();
}

class _SlidingSelectorState extends State<SlidingSelector> {
  int? groupValue = 0;
  List<Widget> selection = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSlidingSegmentedControl(
            thumbColor: buttonDarkGreyColor,
            groupValue: groupValue,
            backgroundColor: darkTextColor,
            onValueChanged: (value) {
              groupValue = value;
              setState(() {});
            },
            children: {
              0: SizedBox(
                width: context.getWidthSize() * .4,
                child: const Center(
                  child: Text(
                    "Phone",
                    style: TextStyle(color: whiteTextColor),
                  ),
                ),
              ),
              1: SizedBox(
                width: context.getWidthSize() * .4,
                child: const Center(
                  child: Text(
                    "Email",
                    style: TextStyle(color: whiteTextColor),
                  ),
                ),
              )
            }),
        (groupValue == 0)
            ? const SelectedRegisterMethod(
                content: 'Phone Number',
                isPhone: true,
                authTextField:
                    AuthTextField(isPassword: false, content: "Phone"),
              )
            : const SelectedRegisterMethod(
                isPhone: false,
                content: "Email",
                authTextField:
                    AuthTextField(isPassword: false, content: "Email"),
              ),
      ],
    );
  }
}
