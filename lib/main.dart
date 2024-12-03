//import 'package:e_commerce_shopping_app/screens/login_screen.dart';
import 'package:e_commerce_shopping_app/screens/navigation_screen.dart';
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
        primaryColor: Color(0xFFFD3022),
      ),
      home: NavigationScreen(),
    );
  }
}
