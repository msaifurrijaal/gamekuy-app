import 'package:flutter/material.dart';
import 'package:gamekuy_app/pages/login_page.dart';
import 'package:gamekuy_app/theme.dart';
import 'package:gamekuy_app/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
