// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'home.dart';
import 'Favorites.dart';
import 'settings.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    const Favorites(),
    const Settings(),
  ];

  final List<String> _appBarTitles = [
    "Gallery",
    "Favorites",
    "Settings",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              _appBarTitles[_selectedIndex],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.055,
              ),
            ),
            backgroundColor: const Color(0xFF677C7B),
          ),
          body: _pages[_selectedIndex],
          /*
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(
              bottom: 35,
              left: 40,
              right: 40,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Expanded(
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: const Color(0xD8D9D9D9),
                  unselectedItemColor: const Color.fromARGB(150, 120, 142, 141),
                  selectedItemColor: const Color.fromARGB(255, 55, 73, 87),
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/navigationbar/home.png',
                        scale: 0.8,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/navigationbar/favourites.png',
                        scale: 0.8,
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        'assets/navigationbar/settings.png',
                        scale: 0.8,
                      ),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
          */
        );
      }),
      debugShowCheckedModeBanner: false,
    );
  }
}
