import 'package:discord_clone/views/home/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';

import 'auth_exports.dart';
import 'selected_register_method.dart';
import 'package:discord_clone/utilities/extensions/size_extension.dart';
import 'package:flutter/cupertino.dart';

class SlidingSelector extends StatefulWidget {
  const SlidingSelector({
    super.key,
    required this.firstSide,
    required this.secondSide,
    required this.firstSliderTitle,
    required this.secondSliderTitle,
  });

  final Widget firstSide;
  final Widget secondSide;
  final String firstSliderTitle;
  final String secondSliderTitle;
  @override
  State<SlidingSelector> createState() => _SlidingSelectorState();
}

class _SlidingSelectorState extends State<SlidingSelector> {
  int? groupValue = 0;
  List<Widget> selection = [];
  @override
  void initState() {
    selection = [widget.firstSide, widget.secondSide];
    super.initState();
  }

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
                child: Center(
                  child: Text(
                    widget.firstSliderTitle,
                    style: const TextStyle(color: whiteTextColor),
                  ),
                ),
              ),
              1: SizedBox(
                width: context.getWidthSize() * .4,
                child: Center(
                  child: Text(
                    widget.secondSliderTitle,
                    style: const TextStyle(color: whiteTextColor),
                  ),
                ),
              )
            }),
        selection[groupValue!],
      ],
    );
  }
}
