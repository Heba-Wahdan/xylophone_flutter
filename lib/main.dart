import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playerSound(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }

  Expanded buildKey({required Color color, required int soundNum}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
              shape: BeveledRectangleBorder(), backgroundColor: color),
          onPressed: () {
            playerSound(soundNum);
          },
          child: SizedBox()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.teal, soundNum: 5),
              buildKey(color: Colors.blue, soundNum: 6),
              buildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        )),
      ),
    );
  }
}
