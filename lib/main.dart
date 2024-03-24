//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectb/logo.dart';
//import 'package:projectb/logo.dart';
import 'package:projectb/screeens/account_screen.dart';
//import 'package:projectb/screeens/main_screen.dart';
//import 'package:projectb/screeens/screens.dart';
import 'package:projectb/signin_page.dart';
import 'package:projectb/signup.dart';
//import 'package:projectb/screeens/main_screen.dart';
//import 'package:projectb/signup.dart';
//import 'package:projectb/welcome_screen.dart';
//import 'package:projectb/screeens/main_screen.dart';

//import 'package:project11/login_page.dart';
//import 'package:project11/screeens/main_screen.dart';
//import 'package:project11/screeens/screens.dart';
//import 'package:project11/screeens/screens.dart';
//import 'package:project11/screeens/screens.dart';
//import 'package:project11/screeens/screens.dart';
//import 'package:project11/screeens/account_screen.dart';
//import 'package:project11/screeens/cart_screen.dart';
//import 'package:project11/screeens/main_screen.dart';
//import 'package:project11/signup.dart';
//import 'package:project11/screeens/screens.dart';
//import 'package:project11/screeens/main_screen.dart';
//import 'package:project11/login_page.dart';
//import 'package:project11/screeens/product_screens.dart';
//import 'package:project11/screeens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const Logo(),
        routes: {
          'signup': (context) => const Signup(),
          // 'HomeAppBar': (context) => const HomeAppBar(),
          'Signin': (context) =>
              const Loginpage(), // Change 'signin' to 'Signin'
        });
  }
}
