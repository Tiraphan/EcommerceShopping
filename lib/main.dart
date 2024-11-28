import 'package:e_commerce_shopping_app/screens/login_screen.dart';
import 'package:e_commerce_shopping_app/screens/onboarding_screen.dart';
import 'package:e_commerce_shopping_app/screens/signup_screen.dart';
import 'package:e_commerce_shopping_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEF6969),
      ),
      home: LoginScreen(),
    );
  }
}
