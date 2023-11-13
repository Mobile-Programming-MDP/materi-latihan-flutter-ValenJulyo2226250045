import 'package:flutter/material.dart';
import 'package:wisatacandi/screens/favorite_screen.dart';
import 'package:wisatacandi/screens/home_screen.dart';
import 'package:wisatacandi/screens/profile_screen.dart';
import 'package:wisatacandi/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO 1. Deklarasikan variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 2. Buat Properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],
      //TODO : 3. Buat properti bottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.deepPurple[50],
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.deepPurple,
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  backgroundColor: Colors.deepPurple,
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  backgroundColor: Colors.deepPurple,
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.deepPurple,
                  label: "Profile")
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showSelectedLabels: true,
          )),
      //TODO : 4. Buat data dan child dari theme
    );
  }
}
