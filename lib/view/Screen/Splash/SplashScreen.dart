import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import '../../../constant.dart';
import '../home/layoutscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      duration: 500,
      splashIconSize:double.infinity ,
      backgroundColor: backgroundcolor,
      centered: true,
      splashTransition:SplashTransition.fadeTransition ,
      pageTransitionType:PageTransitionType.leftToRight,
      splash:SvgPicture.asset(imgSplash),
      nextScreen:LayoutScreen() ,);
  }
}