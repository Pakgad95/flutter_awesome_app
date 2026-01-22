import 'package:flutter/material.dart';
import 'package:flutter_awesome_app/views/home_ui.dart';
import 'package:flutter_awesome_app/views/login_ui.dart';
import 'package:flutter_awesome_app/views/singup_ui.dart';

void main() {
  runApp(
    const FlutterAwesomeApp(),
  );
}


  class FlutterAwesomeApp extends StatefulWidget {
  const FlutterAwesomeApp({super.key});

  @override
  State<FlutterAwesomeApp> createState() => _FlutterAwesomeAppState();
}

class _FlutterAwesomeAppState extends State<FlutterAwesomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUi(),
      theme: ThemeData(
        

      ),
    );
  }
}