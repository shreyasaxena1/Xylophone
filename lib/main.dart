import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}
// => : Arrow function (fat arrow) (only works with single line inst.
/*
int add(){
return 7+8
}
 int add() => 7+8
 */

class Xylophone extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int num) {
    final player = AudioCache();
    player.play('assets_note$num.wav');
  }

  Expanded beginTak({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            beginTak(color: Colors.red, num: 1),
            beginTak(color: Colors.orange, num: 2),
            beginTak(color: Colors.yellow, num: 3),
            beginTak(color: Colors.green, num: 4),
            beginTak(color: Colors.teal, num: 5),
            beginTak(color: Colors.blue, num: 6),
            beginTak(color: Colors.purple, num: 7),
          ],
        )
        ),
      ),
    );
  }
}
