import 'package:flutter/material.dart';
import 'components/auth_exports.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        width: context.getWidthSize(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Enter phone or email",
              style: TextStyle(
                color: whiteTextColor,
                fontSize: fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            height20,
            const SlidingSelector(),
            height10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "View our Privacy Policy",
                  style: TextStyle(
                    color: lightBlueTextColor,
                    fontSize: fontSize14,
                  ),
                ),
              ),
            ),
            height20,
            ButtonWidget(
                content: "Next", color: buttonBlueColor, onPressedFunc: () {})
          ],
        ),
      ),
    );
  }
}
