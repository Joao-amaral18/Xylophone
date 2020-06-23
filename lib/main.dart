import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playSound(res) {
    final player = AudioCache();
    player.play('note$res.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Color(0xFF136DB6), soundNumber: 7),
              buildKey(color: Color(0xFF0354BE), soundNumber: 6),
              buildKey(color: Color(0xFF0059FF), soundNumber: 5),
              buildKey(color: Color(0xFF124ECF), soundNumber: 4),
              buildKey(color: Color(0xFF1037A3), soundNumber: 3),
              buildKey(color: Color(0xFF04317E), soundNumber: 2),
              buildKey(color: Color(0xFF011747), soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
