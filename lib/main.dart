import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_screen.dart';
import 'package:shopping_app/screens/navigation_screen.dart';
import 'package:shopping_app/screens/onboarding_screen.dart';
import 'package:shopping_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce Shopping',
      theme: ThemeData(
        primaryColor: Color(0xFFDB3022)
      ),
      home: NavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
