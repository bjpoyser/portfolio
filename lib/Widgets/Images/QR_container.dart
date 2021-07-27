import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class QRContainer extends StatelessWidget {
  final String title;
  final String picName;
  final String marketURL;
  final double fontSize;
  final double picWidth;

  const QRContainer({
    Key key,
    @required this.title,
    @required this.picName,
    @required this.marketURL,
    this.fontSize = 30,
    this.picWidth = 400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TitleCard(width: picWidth, title: title, fontSize: fontSize),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Global.launchURL(marketURL);
            },
            child: Container(
              width: picWidth,
              decoration: Global.cardBoxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image(
                  image: AssetImage('assets/images/QR/$picName.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ).showCursorOnHover,
        ],
      ),
    );
  }
}
