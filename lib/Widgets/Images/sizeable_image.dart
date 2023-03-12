import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class SizeableImage extends StatelessWidget {
  final String picName;
  final double width;
  final double height;
  final bool hasBorder;

  const SizeableImage({
    Key key,
    @required this.picName,
    @required this.width,
    this.height,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: hasBorder
          ? BoxDecoration(
              border: Border.all(width: 5),
              color: Global.primaryColor,
            )
          : null,
      child: Image(
        image: AssetImage('assets/images/$picName.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }
}
