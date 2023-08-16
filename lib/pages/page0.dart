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
        backgroundColor: const Color(0xFF677C7B),
        title: Text('Page 0'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                  '🚧 Page Under Construction 🚧\n\n🚨 Move Away 🚨',

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 28,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
