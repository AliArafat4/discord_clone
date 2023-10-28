import 'package:discord_clone/views/home/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import '../../data/countries_data_set.dart';
import '../../data/global_data.dart';
import '../../model/countries_model.dart';
import 'components/auth_exports.dart';
import 'components/selected_register_method.dart';

class RegisterScreen extends StatefulWidget {
  static String routeName = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    for (var item in countriesData) {
      listOfCountries.add(Countries.fromJson(item));
    }
    super.initState();
  }

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
            const SlidingSelector(
              firstSliderTitle: "Phone",
              firstSide: SelectedRegisterMethod(
                content: 'Phone Number',
                isPhone: true,
                authTextField:
                    AuthTextField(isPassword: false, content: "Phone"),
              ),
              secondSliderTitle: "Email",
              secondSide: SelectedRegisterMethod(
                isPhone: false,
                content: "Email",
                authTextField:
                    AuthTextField(isPassword: false, content: "Email"),
              ),
            ),
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
                content: "Next",
                color: buttonBlueColor,
                onPressedFunc: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    BottomNavBar.routeName,
                    (route) => false,
                  );
                })
          ],
        ),
      ),
    );
  }
}
