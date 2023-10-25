import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.content,
    required this.color,
    required this.onPressedFunc,
  });
  final String content;
  final Color color;
  final Function()? onPressedFunc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 38,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color, elevation: 0),
          onPressed: onPressedFunc,
          child: Text(
            content,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
