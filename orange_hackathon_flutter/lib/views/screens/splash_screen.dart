import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:orange_hackathon_flutter/views/screens/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      splashIconSize: 268,
      nextScreen: OnBoardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
