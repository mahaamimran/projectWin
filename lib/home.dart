import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final bool isMessageSent;

  const Home({Key? key, required this.isMessageSent}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGalleryView = false;
 

  @override
  void initState() {
    super.initState();
    // Set the initial state of isGalleryView based on widget.isMessageSent
    isGalleryView = widget.isMessageSent;
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update isGalleryView based on widget.isMessageSent
    isGalleryView = widget.isMessageSent;
  }

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
    );
  }

  List<Widget> _buildContainers() {
    return List.generate(
      22,
      (index) => GestureDetector(
        onTap: () {
          // Handle the click for the container
          print('tapped box $index');
          print('Is Message Sent: ${widget.isMessageSent}');
        },
        child: Container(
          width: isGalleryView
              ? MediaQuery.of(context).size.width * 0.4
              : MediaQuery.of(context).size.width * 0.9,
          height: isGalleryView
              ? MediaQuery.of(context).size.width * 0.4
              : MediaQuery.of(context).size.height * 0.15,
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.04),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(120, 142, 141, 0.56),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
