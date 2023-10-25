import 'package:flutter/material.dart';

import 'package:discord_clone/views/auth/components/auth_exports.dart';

class WelcomingWidget extends StatelessWidget {
  const WelcomingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .55,
          child: Stack(
            children: [
              Positioned(
                  left: 50,
                  top: 20,
                  child: Image.asset("assets/images/npc1.png", scale: 6.5)),
              Positioned(
                  right: 30,
                  top: 140,
                  child: Image.asset("assets/images/npc3.png", scale: 2)),
              Positioned(
                  bottom: -40,
                  left: 50,
                  child: Image.asset("assets/images/npc2.png", scale: 2.5)),
              Positioned(
                  right: 140,
                  top: 20,
                  child: Image.asset(
                    "assets/images/crystal yellow.png",
                    scale: 2,
                  )),
              Positioned(
                  right: 90,
                  bottom: 80,
                  child: Image.asset(
                    "assets/images/crystal blue.png",
                    scale: 2,
                  )),
            ],
          ),
        ),
        const Text(
          textAlign: TextAlign.center,
          "Welcome to Discord",
          style: TextStyle(
              color: whiteTextColor, fontWeight: FontWeight.w600, fontSize: 25),
        ),
        height10,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.0),
          child: Text(
            textAlign: TextAlign.center,
            "Join over of 100 million people who use Discord to talk with communities and friends.",
            style: TextStyle(fontSize: fontSize15, color: greyTextColor),
          ),
        ),
      ],
    );
  }
}
