import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 200,
        height: 200,
        child: Stack(
          // allow to put 2 or more elements on top of each others
          // permet de mettre 2 widgets superposé.
          children: [
            //blur effect
            //effet flouté
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),
            //gradient effect

            //fusion de couleurs

            //child
            //ajout de widget de manière en enfant (parents de stack)
          ],
        ),
      ),
    );
  }
}
