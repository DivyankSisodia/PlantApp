import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 21, 166, 84);
const secondaryColor = Color.fromARGB(255, 20, 146, 75);
const backgroundColor = Color(0xFFE5E5E5);
const textColor = Color(0xFF34A853);
const smallTextColor = Color.fromARGB(255, 96, 94, 94);
const headingColor = Color(0xFF000000);
const categoryColor = Color(0xFF60E275);
const categoryTextColor = Color(0xFFE1E3E1);
const textFieldColor = Color.fromARGB(255, 206, 249, 222);

class AppTheme {
  static const TextStyle display1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50,
    color: headingColor,
  );
  static const TextStyle display2 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: headingColor,
  );
  static const TextStyle display3 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 31,
    color: headingColor,
  );
  static const TextStyle displayCustom = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: headingColor,
  );
  static const TextStyle buttontext = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: backgroundColor,
  );
  static const TextStyle buttontext2 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 26,
    color: primaryColor,
  );
  static const TextStyle signUpTitle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 30,
    color: secondaryColor,
  );
  static const TextStyle smallTextTitle = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 15,
    color: smallTextColor,
  );
  static const TextStyle smallTextMisc = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: headingColor,
  );
}
