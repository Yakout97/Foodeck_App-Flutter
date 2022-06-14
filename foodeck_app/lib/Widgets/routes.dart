import 'package:flutter/material.dart';
import 'package:foodeck_app/screens/creat_and_login/creat_account.dart';
import 'package:foodeck_app/screens/creat_and_login/forget_password.dart';
import 'package:foodeck_app/screens/creat_and_login/login.dart';
import 'package:foodeck_app/screens/creat_and_login/login_email.dart';
import 'package:foodeck_app/screens/creat_and_login/otp.dart';
import 'package:foodeck_app/screens/explore.dart';
import 'package:foodeck_app/screens/food_menu.dart';
import 'package:foodeck_app/screens/home.dart';
import 'package:foodeck_app/screens/intro.dart';

Map<String, WidgetBuilder> routes = {
  'Home': (context) => Home(),
  '/': (context) => Intro(),
  'LoginPage': (context) => LoginPage(),
  'login_email': (context) => LoginViaEmail(),
  'creat_account': (context) => CreatAccount(),
  'otp': (context) => Otp(),
  'ForgetPass': (context) => ForgetPass(),
  'foodmenu': (context) => FoodMenu(),
  // '/s': (context) => , // just for testing
};
