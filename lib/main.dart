import 'package:edges_img/colors/colors.dart';
import 'package:edges_img/splash_screen.dart';

import '../screens/home_page.dart';
import 'package:flutter/material.dart';
import 'colors/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edge_App',
      theme: ThemeData(
        primaryColor: kprimary,
      ),
      home: SplashScreen(),
    );
  }
}
