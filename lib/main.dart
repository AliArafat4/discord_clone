import 'package:flutter/material.dart';

import 'routes.dart';
import 'views/auth/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
