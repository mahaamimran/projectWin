import 'package:flutter/material.dart';

class SenderWidget extends StatelessWidget {
  final bool message;

  SenderWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReceiverWidget(message: message),
            ),
          );
        },
        child: Text('Send Message'),
      ),
    );
  }
}

class ReceiverWidget extends StatelessWidget {
  final bool message;

  ReceiverWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receiver Widget'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Text('Received Message: $message'),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SenderWidget(message: false),
    );
  }
}
