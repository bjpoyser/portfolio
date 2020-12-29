import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/Cards/font_horizontal_card.dart';

class FontsContentDesktop extends StatefulWidget {
  @override
  _FontsContentDesktopState createState() => _FontsContentDesktopState();
}

class _FontsContentDesktopState extends State<FontsContentDesktop> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 400),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/silhouette-rocket.png'),
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
        ),
        Center(
          child: FontHorizontalCard(size: size),
        ),
      ],
    );
  }
}
