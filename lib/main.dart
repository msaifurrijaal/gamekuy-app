import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamekuy_app/blocs/auth/auth_bloc.dart';
import 'package:gamekuy_app/pages/login_page.dart';
import 'package:gamekuy_app/pages/register_page.dart';
import 'package:gamekuy_app/theme.dart';
import 'package:gamekuy_app/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        theme: mainTheme,
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: {
          RegisterPage.routeName: (context) => RegisterPage(),
          Navbar.routeName: (context) => Navbar(),
          LoginPage.routeName: (context) => LoginPage()
        },
      ),
    );
  }
}
