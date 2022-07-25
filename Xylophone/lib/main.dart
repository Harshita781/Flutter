import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int soundNumber) async {
    final player=AudioPlayer();
    player.play(UrlSource('note$soundNumber.wav'));
    await player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buildKey({required Color color,required int soundNumber}){
    return Expanded(
      child: TextButton(
      child: Text(""),
      style: TextButton.styleFrom(
        backgroundColor: color, // Background Color
      ),
      onPressed: (){
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              buildKey(color:Colors.red,soundNumber:1),
              buildKey(color:Colors.orange,soundNumber:2),
              buildKey(color:Colors.yellow,soundNumber:3),
              buildKey(color:Colors.green,soundNumber:4),
              buildKey(color:Colors.teal,soundNumber:5),
              buildKey(color:Colors.blue,soundNumber:6),
              buildKey(color:Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
