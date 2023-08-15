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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            )
          else
            Column(
              children: [
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  color: Colors.red,
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  color: Colors.green,
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  color: Colors.blue,
                ),
                Container(
                  width: containerWidth,
                  height: containerHeight,
                  color: Colors.yellow,
                ),
              ],
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isGalleryView = !isGalleryView; // Toggle between list and gallery view
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
