/*
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache audioCache = AudioCache(prefix: 'audios/'); // Specify the folder path

  @override
  void initState() {
    super.initState();
    // Preload the audio file
    audioCache.load('test.mp3'); // Replace with your audio file's name
  }

  Future<void> playAudio() async {
    final player = await audioCache.play('test.mp3'); // Replace with your audio file's name
    // You can use the 'player' object to control playback if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Play the preloaded audio file
            playAudio();
          },
          child: Text('Play Audio'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AudioPlayerPage(),
    );
  }
}

*/