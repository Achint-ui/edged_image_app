import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:edges_img/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // splash: Lottie.asset(
      //     "https://assets3.lottiefiles.com/packages/lf20_pkzscvhb.json"),
      splash: Center(
        child: Column(
          children: [Text('Splash Screen')],
        ),
      ),
      nextScreen: Home_Page(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
