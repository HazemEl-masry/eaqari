import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xff4475F5);
  static const Color secondary = Color(0xff517DFA); // Used for icons & accents

  // Backgrounds
  static const Color darkBackground = Color(
    0xff293A54,
  ); // Used for AppBar button
  static const Color searchBackground = Color(
    0xff384B6B,
  ); // Used for Search input

  // Text Colors
  static const Color textDark = Color(0xff122B4B);
  static const Color textWhite = Colors.white;
  static const Color textBlue = Colors.blue; // standard blue

  // Animated Text Colors (Custom App Bar)
  static const Color successGreen = Color.fromARGB(255, 85, 230, 153);
  static const Color lightIndigo = Color.fromARGB(255, 153, 162, 255);
  static const Color warningYellow = Colors.yellow;

  // Standard Colors
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;
}
