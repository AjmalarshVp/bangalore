import 'package:demo/screens/animationscreen.dart';
import 'package:demo/screens/bottomnavigation.dart';
import 'package:demo/screens/loginpage.dart';
import 'package:demo/screens/homepage.dart';
import 'package:demo/screens/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
