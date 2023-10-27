import 'package:flutter/material.dart';
import 'views/auth/authentication_screen.dart';
import 'views/auth/log_in_screen.dart';
import 'views/auth/register_screen.dart';
import 'views/auth/welcome_screen.dart';
import 'views/home/bottom_nav_bar.dart';
import 'views/home/explore_screen.dart';
import 'views/home/friends_screen.dart';
import 'views/home/main_screen.dart';
import 'views/home/notifications_screen.dart';
import 'views/home/profile_screen.dart';

Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  LogInScreen.routeName: (context) => const LogInScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  //ExploreScreen.routeName: (context) => const ExploreScreen(),
  FriendsScreen.routeName: (context) => const FriendsScreen(),
  NotificationsScreen.routeName: (context) => const NotificationsScreen(),
  BottomNavBar.routeName: (context) => const BottomNavBar(),
  AuthenticationScreen.routeName: (context) => const AuthenticationScreen(),
};
