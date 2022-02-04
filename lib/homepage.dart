import 'package:flutter/material.dart';
import 'package:glassdesign/widgets/GlassBox.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //one of the most important widget for Flutter framework
      //le 2eme widget principal qui compose Flutter framework
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/autumn.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: GlassBox(),
        ),
      ),
    );
  }
}
