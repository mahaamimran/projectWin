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
  bool isGalleryView = true; // Whether to show the gallery view
  late bool isMessageSent = true; // testing
  final List<Widget> _pages = [
    Home(isMessageSent: true),
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
          // extendBodyBehindAppBar: true, // Extend body behind the app bar
          appBar: AppBar(
            title: Text(
              _appBarTitles[_selectedIndex],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.055,
              ),
            ),
            backgroundColor: const Color(0xFF677C7B),
            elevation: 0, // Remove the app bar's shadow
            actions: [
              // Add a button to toggle the gallery view
              IconButton(
                icon: Icon(isGalleryView ? Icons.view_list : Icons.grid_view),
                onPressed: () {
                  setState(() {
                    isGalleryView = !isGalleryView;
                    print('skeletonToggle');
                    isMessageSent = !isMessageSent;
                    

                    // Pass isMessageSent to Home widget
                    _pages[0] = Home(isMessageSent: isMessageSent);
                  });
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              _pages[_selectedIndex], // Your main content
              Positioned(
                left: 40,
                right: 40,
                bottom: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    backgroundColor: const Color(0xD8D9D9D9),
                    unselectedItemColor:
                        const Color.fromARGB(150, 120, 142, 141),
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
            ],
          ),
        );
      }),
      debugShowCheckedModeBanner: false,
    );
  }
}
