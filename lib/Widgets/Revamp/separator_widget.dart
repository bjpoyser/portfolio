import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class Separator extends StatelessWidget {
  final String title;

  const Separator({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title != ''
              ? Text(
                  title,
                  style: Global.TitleStyle,
                )
              : Container(),
          Image(image: AssetImage('assets/images/UI/divisor.png')),
        ],
      ),
    );
  }
}
