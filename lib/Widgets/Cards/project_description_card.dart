import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class ProjectDescriptionCard extends StatelessWidget {
  final String title;
  final String desc;
  final double width;
  final double fontSize;
  final bool isMobile;

  const ProjectDescriptionCard({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.width, @required this.fontSize, this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: Global.cardBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              desc,
              style: TextStyle(fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}