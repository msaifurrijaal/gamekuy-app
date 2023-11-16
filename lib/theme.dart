import 'package:flutter/material.dart';

const Color redColor = Color(0xFFd03755);
const Color darkRedColor = Color(0xFF900C3F);
const Color softRedColor = Color(0xFFFF6969);
const Color black = Color(0xFF000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color greyColor = Color(0xff98A2B3);
const Color softGreyColor = Color(0xFFCCCCCC);
const Color greyLightColor = Color(0xFFebebeb);

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
      backgroundColor: MaterialStateProperty.all(redColor),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ),
  ),
);
