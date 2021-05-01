import 'package:flutter/material.dart';

class ColorChangeableImage extends StatelessWidget {
  final bool isHover;
  final String picName;
  final bool isMobile;

  const ColorChangeableImage({
    Key key,
    @required this.isHover,
    @required this.picName, 
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage('assets/images/$picName.png'),
        fit: BoxFit.cover,
      );
  }
}