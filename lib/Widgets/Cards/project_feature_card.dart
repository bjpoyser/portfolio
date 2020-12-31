import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class ProjectFeatureCard extends StatelessWidget {
  const ProjectFeatureCard({
    Key key,
    @required this.width,
    @required this.title,
    @required this.description, @required this.fontSize,

  }) : super(key: key);

  final double width;
  final String title;
  final Widget description;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: width,
        decoration: Global.cardBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: title,
                      style: TextStyle(
                          fontSize: fontSize, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              description
            ],
          ),
        ),
      ),
    );
  }
}