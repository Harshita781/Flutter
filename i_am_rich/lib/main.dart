import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[700],
            centerTitle: true,
            title: const Text("I Am Rich"),
          ),
          body:const Center(
            child:Image(
              image:AssetImage('assets/Diamond.png'),
            ),
          ),
        )
    );
  }
}
