import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha_app2/view/Screen/Splash/SplashScreen.dart';


void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
//var pageTransitionType;
return MaterialApp(
title: 'تسبيح',
debugShowCheckedModeBanner: false,
theme: ThemeData(
//primarySwatch: Colors.blue,
textTheme: GoogleFonts.oswaldTextTheme(Theme.of(context).textTheme) ),
home:SplashScreen(),


);
}
}

