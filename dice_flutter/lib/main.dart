import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _State();
}

class _State extends State<DicePage> {
  int LeftDiceNumber=1;
  int RightDiceNumber=1;
  void changeFace(){
    setState ((){
      LeftDiceNumber=Random().nextInt(6)+1;
      RightDiceNumber=Random().nextInt(6)+1;
    });
  }
@override
Widget build(BuildContext context) {
return Center(
child: Row(
children: [
Expanded(
child: TextButton(
onPressed: () {
  changeFace();
},
child: Image.asset('images/dice$LeftDiceNumber.png'),
),
),
Expanded(
child: TextButton(
onPressed: () {
  changeFace();
},
child: Image.asset('images/dice$RightDiceNumber.png'),
),
),
],
),
);
}
}
