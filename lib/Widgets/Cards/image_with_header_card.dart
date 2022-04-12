import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

import '../../Shared/global.dart';
import 'title_card.dart';

class ImageWithHeaderCard extends StatelessWidget {
  final String title;
  final double cardWidth;
  final double imageWidth;
  final double height;
  final String picName;

  const ImageWithHeaderCard({
    Key key,
    @required this.title,
    @required this.cardWidth,
    this.height,
    @required this.picName,
    @required this.imageWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Global.cardBoxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title != ""
              ? TitleCard(
                  width: cardWidth,
                  title: title,
                  fontSize: Global.subtitleFontSize,
                )
              : Container,
          Container(
            width: cardWidth,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: smallImage(imageWidth, picName),
            ),
          ),
        ],
      ),
    );
  }
}

Widget smallImage(width, picName) => FullScreenWidget(
      backgroundIsTransparent: true,
      disposeLevel: DisposeLevel.Medium,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: width,
          child: Center(
            child: Hero(
              tag: picName,
              child: ClipRRect(
                child: Image.asset(
                  "assets/images/$picName.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
