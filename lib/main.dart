// ignore_for_file: prefer_const_constructors

import 'package:auth_app/constants.dart';
import 'package:auth_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Color(0xFFFC7823)),
        scaffoldBackgroundColor: Color(0xFFF8F7FC),
      ),
      home: HomeScreen(),
    );
  }
}
