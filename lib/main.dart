import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
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
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellowAccent, soundNumber: 3),
              buildkey(color: Colors.blue, soundNumber: 4),
              buildkey(color: Colors.greenAccent, soundNumber: 5),
              buildkey(color: Colors.purpleAccent, soundNumber: 6),
              buildkey(color: Colors.teal, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
/*FlatButton(
minWidth: 500,
height: 20,
onPressed: () {
final player = AudioCache();
player.play('note1.wav');
},
child: Text('click me'
),
),*/
