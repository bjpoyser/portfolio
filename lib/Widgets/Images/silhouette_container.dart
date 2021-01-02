import 'dart:ui';

import 'package:flutter/material.dart';

class SilhouetteContainer extends StatelessWidget {
  final String picName;
  final EdgeInsets padding;
  final double height;

  const SilhouetteContainer({
    Key key, @required this.picName, @required this.padding, @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/silhouettes/silhouette-$picName.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 15.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
    );
  }
}