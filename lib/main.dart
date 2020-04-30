import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  Function getPlaySound(int soundNumber) => () {
        player.play('note$soundNumber.wav');
      };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: getPlaySound(1),
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(2),
                child: Container(
                  color: Colors.orange,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(3),
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(4),
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(5),
                child: Container(
                  color: Colors.teal,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(6),
                child: Container(
                  color: Colors.blue,
                  height: 50,
                ),
              ),
              FlatButton(
                onPressed: getPlaySound(7),
                child: Container(
                  color: Colors.purple,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
