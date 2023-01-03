import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class ProjectLogo extends StatelessWidget {
  final dynamic action;
  final String role;
  final String picName;
  final double picSize;
  final double cardWidth;
  final double cardHeight;

  const ProjectLogo(
      {Key key,
      @required this.action,
      @required this.role,
      @required this.picName,
      @required this.cardWidth,
      @required this.cardHeight,
      this.picSize = 200})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20.0),
            child: Container(
              width: picSize,
              height: picSize,
              child: Image.asset('assets/images/logos/logo-$picName.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'As $role',
              style: TextStyle(fontSize: Global.subtitleFontSize),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
