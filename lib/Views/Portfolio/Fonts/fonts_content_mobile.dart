import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/font_vertical_card.dart';

class FontsContentMobile extends StatefulWidget {
  @override
  _FontsContentMobileState createState() => _FontsContentMobileState();
}

class _FontsContentMobileState extends State<FontsContentMobile> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FontVerticalCard(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
