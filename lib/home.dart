import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGalleryView = false; // Default to list view

  double containerWidth = 100;
  double containerHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        children: [
          if (isGalleryView)
            Column(
              children: [
                // row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle the click for the first container
                        print('tapped box 1');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(120, 142, 141, 0.56),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle the click for the second container
                        print('tapped box 2');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(120, 142, 141, 0.56),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                // space between two rows
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.04,
                ),
                // row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle the click for the first container
                        print('tapped box 1');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(120, 142, 141, 0.56),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle the click for the second container
                        print('tapped box 2');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(120, 142, 141, 0.56),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.blue,
                ),
              ],
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isGalleryView =
                !isGalleryView; // Toggle between list and gallery view
            if (isGalleryView) {
              containerWidth = 150; // Update width for gallery view
              containerHeight = 75; // Update height for gallery view
            } else {
              containerWidth = 100; // Reset width for list view
              containerHeight = 100; // Reset height for list view
            }
          });
        },
        child: Icon(isGalleryView ? Icons.view_list : Icons.grid_view),
      ),
    );
  }
}
