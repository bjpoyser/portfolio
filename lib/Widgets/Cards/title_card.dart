import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class TitleCard extends StatelessWidget {
  final double size;
  final String title;

  const TitleCard({Key key, @required this.size, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      decoration: Global.cardBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 50),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}