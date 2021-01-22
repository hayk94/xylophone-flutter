import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.red,
                soundNumber: 1,
              ),
              buildKey(
                color: Colors.orange,
                soundNumber: 2,
              ),
              buildKey(
                color: Colors.yellow,
                soundNumber: 3,
              ),
              buildKey(
                color: Colors.green,
                soundNumber: 4,
              ),
              buildKey(
                color: Colors.teal,
                soundNumber: 5,
              ),
              buildKey(
                color: Colors.blue,
                soundNumber: 6,
              ),
              buildKey(
                color: Colors.purple,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
