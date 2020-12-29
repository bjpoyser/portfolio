import 'package:flutter/material.dart';

class SizeableImage extends StatelessWidget {
  final String picName;
  final double width;
  final double height;

  const SizeableImage({Key key, this.picName, this.width, this.height,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(border: Border.all(width: 5)),
      child: Image(
        image: AssetImage('assets/images/$picName.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}