import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  final bool isMessageSent; // Add this parameter

  const Home({Key? key, required this.isMessageSent}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGalleryView = true;
  double containerWidth = 175;
  double containerHeight = 175;
  
  get isMessageSent => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        children: [
          if (isGalleryView)
            Wrap(
              spacing: MediaQuery.of(context).size.width * 0.06,
              runSpacing: MediaQuery.of(context).size.width * 0.01,
              alignment: WrapAlignment.center,
              children: _buildContainers(),
            )
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _buildContainers(),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isGalleryView = !isGalleryView;
            if (isGalleryView) {
              containerWidth = MediaQuery.of(context).size.width * 0.4;
              containerHeight = MediaQuery.of(context).size.width * 0.4;
            } else {
             containerWidth = MediaQuery.of(context).size.width * 0.9;
              containerHeight = MediaQuery.of(context).size.width * 0.3;
            }
          });
        },
        child: Icon(isGalleryView ? Icons.view_list : Icons.grid_view),
      ),
    );
  }

  List<Widget> _buildContainers() {
    return List.generate(
      22,
      (index) => GestureDetector(
        onTap: () {
          // Handle the click for the container
          print('tapped box $index');
          print('$isMessageSent');
        },
        child: Container(
          width: containerWidth,
          height: containerHeight,
           margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.04),
          decoration: BoxDecoration(
            color: Color.fromRGBO(120, 142, 141, 0.56),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
