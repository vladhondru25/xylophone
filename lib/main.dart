import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color color, String soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 'note1.wav'),
              buildKey(Colors.orange, 'note2.wav'),
              buildKey(Colors.yellow, 'note3.wav'),
              buildKey(Colors.green, 'note4.wav'),
              buildKey(Colors.teal, 'note5.wav'),
              buildKey(Colors.blue, 'note6.wav'),
              buildKey(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
