import 'package:discord_clone/views/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/auth_exports.dart';
import 'log_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            height60,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/discord_icon.svg",
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 15),
                const Text(
                  "Discord",
                  style: TextStyle(
                      fontSize: 30,
                      color: whiteTextColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Expanded(
              flex: 1,
              child: WelcomingWidget(),
            ),
            ButtonWidget(
              color: buttonBlueColor,
              content: "Register",
              onPressedFunc: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
            ),
            height13,
            ButtonWidget(
              color: buttonDarkGreyColor,
              content: "Log In",
              onPressedFunc: () {
                Navigator.pushNamed(context, LogInScreen.routeName);
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
