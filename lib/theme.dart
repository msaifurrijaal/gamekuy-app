import 'package:flutter/material.dart';

const Color blueColor = Color(0xFF0E64E6);
const Color darkBlueColor = Color(0xFF0B50B8);
const Color softBlueColor = Color(0xFFEFF8FF);
const Color black = Color(0xFF000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color greyColor = Color(0xff98A2B3);
const Color softGreyColor = Color(0xFFCCCCCC);

ThemeData mainTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  textTheme: const TextTheme(
    displayLarge:
        TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: black),
    displayMedium:
        TextStyle(fontSize: 60, fontWeight: FontWeight.w300, color: black),
    displaySmall:
        TextStyle(fontSize: 48, fontWeight: FontWeight.w300, color: black),
    headlineMedium:
        TextStyle(fontSize: 34, fontWeight: FontWeight.w300, color: black),
    headlineSmall:
        TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: black),
    titleLarge:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: black),
    bodyLarge:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: black),
    bodyMedium:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: black),
    bodySmall:
        TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: black),
    labelLarge:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(darkBlueColor),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ),
);
