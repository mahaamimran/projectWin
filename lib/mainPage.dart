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
            backgroundColor: const Color(0xff212327),
          ),
          body: _pages[_selectedIndex],
          bottomNavigationBar: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 35,
                left: 40,
                right: 40,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: BottomNavigationBar(

                  iconSize: 40,
                  elevation: 10, 
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  backgroundColor: Color.fromARGB(
                      190, 217, 217, 217), 
                  selectedItemColor: const Color.fromARGB(255, 55, 73, 87),
                  unselectedItemColor: const Color.fromARGB(200, 55, 73, 87),
                  currentIndex: _selectedIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
      debugShowCheckedModeBanner: false,
    );
  }
}
