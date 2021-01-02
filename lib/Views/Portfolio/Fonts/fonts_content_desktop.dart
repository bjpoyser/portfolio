import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/Cards/font_horizontal_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

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
        SilhouetteContainer(
          height: 600,
          picName: 'rocket',
          padding: const EdgeInsets.only(top: 150, left: 400),
        ),
        Center(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FontHorizontalCard(size: size),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
