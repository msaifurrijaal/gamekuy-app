import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamekuy_app/blocs/game/game_bloc.dart';
import 'package:gamekuy_app/pages/category_page.dart';
import 'package:gamekuy_app/pages/favorite_page.dart';
import 'package:gamekuy_app/pages/home_page.dart';
import 'package:gamekuy_app/pages/profile_page.dart';
import 'package:gamekuy_app/theme.dart';

class Navbar extends StatefulWidget {
  Navbar({
    super.key,
  });

  static const routeName = "/navbar";
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  List pages = [
    BlocProvider(
      create: (context) => GameBloc(),
      child: const HomePage(),
    ),
    const CategoryPage(),
    const FavoritePage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whiteColor,
        iconSize: 22,
        elevation: 10,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad), label: 'Profile App'),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
      ),
      body: pages[selectedIndex],
    );
  }
}
