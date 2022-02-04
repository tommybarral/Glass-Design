import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  double height;
  double width;
  final child;

  GlassBox({
    @required this.height,
    @required this.width,
    @required this.child,
  });

  final _borderRadius = BorderRadius.circular(20);
//_name allow to put a variable or a constant in private (not accessing from outside of the file)
//_nom permet de mettre une variable ou une constante en privé (inaccessible dans un autre fichier)

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          // allow to put 2 or more elements on top of each others
          // permet de mettre 2 widgets superposé.
          children: [
            BackdropFilter(
              //blur effect
              //effet flouté
              filter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: Container(),
            ),
            //gradient effect
            //fusion de couleurs
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: _borderRadius,
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            //child
            //ajout de widget en enfant (parents de stack)
            Padding(
              padding: const EdgeInsets.all(15.0),
              // adding const before a proprety allow to reload faster, better performance
              // ajout de const avant une propriété permet un rafraichissement et de meilleurs performances pour l'application
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
