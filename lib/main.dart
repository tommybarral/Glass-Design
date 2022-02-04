import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // the most important widget that allow to build everything in Flutter
      // widget le plus important qui est la base du framework Flutter
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
