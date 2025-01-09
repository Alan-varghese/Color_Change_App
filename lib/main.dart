import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangerApp(),
    );
  }
}

class ColorChangerApp extends StatefulWidget {
  const ColorChangerApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangerAppState createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  Color _backgroundColor = Colors.white;

  void _changeColor(){
    setState(() {
      _backgroundColor = Color.fromARGB(255, 
      Random().nextInt(256),
    Random().nextInt(256),
    Random().nextInt(256),
    );
    });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: _backgroundColor,
    appBar: AppBar(
      title: Text("Color Changer App"),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),
    body: Center(
      child: ElevatedButton(onPressed: _changeColor,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        "Change Color",
      ),
            
    ),
    ),
  );
}
}

