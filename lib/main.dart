import 'package:flutter/material.dart';
import 'package:poultry_app/screens/bottomnav.dart';
import 'package:poultry_app/screens/mainscreens/homepage.dart';
import 'package:poultry_app/screens/start/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavigation(),
    );
  }
}
