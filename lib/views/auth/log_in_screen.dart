import 'package:discord_clone/views/auth/components/auth_exports.dart';
import 'package:flutter/material.dart';

import 'authentication_screen.dart';

class LogInScreen extends StatelessWidget {
  static String routeName = '/login';
  const LogInScreen({Key? key}) : super(key: key);

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
              "Welcome back!",
              style: TextStyle(
                color: whiteTextColor,
                fontSize: fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            height5,
            const Text(
              "We're so excited to see you again!",
              style: TextStyle(
                color: whiteTextColor,
                fontSize: fontSize15,
              ),
            ),
            height10,
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Account Information",
                  style: TextStyle(
                    color: greyTextColor,
                    fontSize: fontSize15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            height10,
            const AuthTextField(
                isPassword: false, content: "Email or Phone Number"),
            height10,
            const AuthTextField(isPassword: true, content: "Password"),
            height10,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Forget your password?",
                  style: TextStyle(
                    color: lightBlueTextColor,
                    fontSize: fontSize14,
                  ),
                ),
              ),
            ),
            height8,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Use a password manager?",
                  style: TextStyle(
                    color: lightBlueTextColor,
                    fontSize: fontSize14,
                  ),
                ),
              ),
            ),
            height20,
            ButtonWidget(
                content: "Log In",
                color: buttonBlueColor,
                onPressedFunc: () {
                  Navigator.pushNamed(context, AuthenticationScreen.routeName);
                })
          ],
        ),
      ),
    );
  }
}
