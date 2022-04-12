import 'dart:ui';

import 'package:flutter/material.dart';

class SilhouetteContainer extends StatelessWidget {
  final String picName;
  final EdgeInsets padding;
  final double height;
  final double width;

  const SilhouetteContainer(
      {Key key,
      @required this.picName,
      @required this.padding,
      @required this.width,
      this.height = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double finalHeight = height == 0 ? width : height;

    return Padding(
      padding: padding,
      child: Container(
        height: finalHeight,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/silhouettes/silhouette-$picName.png'),
            fit: BoxFit.fitWidth,
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
