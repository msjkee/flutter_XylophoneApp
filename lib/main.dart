import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final audioPlayer = new AudioPlayer();
    audioPlayer.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          child: SizedBox(width: double.infinity)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
