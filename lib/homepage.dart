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
        alignment: Alignment(0, 0),
        child: GlassBox(
          height: 250.0,
          width: 200.0,
          child: Center(
            child: Text(
              'Glass Design',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
