import 'package:flutter/material.dart';
import '/widget/bottomnav.dart';
import '/widget/drawer.dart';
import '/widget/appbar.dart';
import '/screens/homescreen.dart';
import '/screens/favoritescreen.dart';
import '/screens/sharescreen.dart';
import '/screens/recipescreen.dart';
import '/screens/morescreen.dart';

void main() {
  runApp(const DevacctoProject());
}

class DevacctoProject extends StatefulWidget {
  const DevacctoProject({super.key});

  @override
  State<DevacctoProject> createState() => _DevacctoProjectState();
}

class _DevacctoProjectState extends State<DevacctoProject> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    FavoriteScreen(),
    ShareScreen(),
    RecipeScreen(),
    MoreScreen(),
  ];

  void _NavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appbar(),
        body: IndexedStack(index: _currentIndex, children: _pages),
        drawer: drawer(),
        bottomNavigationBar: Bottomnav(
          currentIndex: _currentIndex,
          onTap: _NavTapped,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
