import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class TitleCard extends StatelessWidget {
  final double width;
  final String title;
  final double fontSize;

  const TitleCard({Key key, @required this.width, @required this.title, this.fontSize = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: Global.softShadowDecoration,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: fontSize),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}