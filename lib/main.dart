// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    AudioCache player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildButton({Color color, int note}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(note);
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
            children: <Widget>[
              buildButton(color: Colors.red, note: 1),
              buildButton(color: Colors.orange, note: 2),
              buildButton(color: Colors.yellow, note: 3),
              buildButton(color: Colors.green, note: 4),
              buildButton(color: Colors.teal, note: 5),
              buildButton(color: Colors.blue, note: 6),
              buildButton(color: Colors.purple, note: 7),
              buildButton(color: Colors.purple[900], note: 8),
            ],
          ),
        ),
      ),
    );
  }
}
