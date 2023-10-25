import 'package:flutter/material.dart';
import '../home/bottom_nav_bar.dart';
import 'components/auth_floating_button.dart';
import 'components/auth_exports.dart';

class AuthenticationScreen extends StatefulWidget {
  static String routeName = '/auth';

  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDisabled = true;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: const Icon(Icons.close),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SizedBox(
        width: context.getWidthSize(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Verify with two-factor code",
              style: TextStyle(
                color: whiteTextColor,
                fontSize: fontSize24,
                fontWeight: FontWeight.w500,
              ),
            ),
            height20,
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "ENTER DISCORD AUTH CODE",
                  style: TextStyle(
                    color: greyTextColor,
                    fontSize: fontSize15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            height10,
            AuthTextField(
              keyboardType: const TextInputType.numberWithOptions(),
              controller: controller,
              isPassword: false,
              content: "6-digit authentication code",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, child) {
              return AuthFloatingButton(
                content: "Submit",
                color: buttonBlueColor,
                isDisabled: (value.text.length == 6) ? false : true,
                onPressedFunc: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    BottomNavBar.routeName,
                    (route) => false,
                  );
                },
              );
            },
          ),
          height10,
          AuthFloatingButton(
            content: "Verify with something else",
            isDisabled: false,
            color: buttonDarkGreyColor,
            onPressedFunc: () {},
          )
        ],
      ),
    );
  }
}
