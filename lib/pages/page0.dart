import 'package:flutter/material.dart';

class Page0 extends StatefulWidget {
  const Page0({Key? key}) : super(key: key);

  @override
  _Page0State createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 0'),
      ),
      body: Center(
        child: Text(
          'This is Page 0',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
