import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

import 'Cards/horizontal_card.dart';

class DescriptionTexts extends StatelessWidget {
  const DescriptionTexts({
    Key key,
    @required this.widget,
    @required this.isHover,
  }) : super(key: key);

  final HorizontalCard widget;
  final bool isHover;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: widget.isLeft ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title != ''
              ? Text(widget.title,
                  style: TextStyle(
                      fontSize: 30, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.subtitle != ''
              ? Text(widget.subtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.secondSubtitle != ''
              ? Text(widget.secondSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.thirdSubtitle != ''
              ? Text(widget.thirdSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.fourthSubtitle != ''
              ? Text(widget.fourthSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.fifthSubtitle != ''
              ? Text(widget.fifthSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container()
        ],
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          widget.title != ''
              ? Text(widget.title,
                  style: TextStyle(
                      fontSize: 30, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.subtitle != ''
              ? Text(widget.subtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.secondSubtitle != ''
              ? Text(widget.secondSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.thirdSubtitle != ''
              ? Text(widget.thirdSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.fourthSubtitle != ''
              ? Text(widget.fourthSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container(),
          widget.fifthSubtitle != ''
              ? Text(widget.fifthSubtitle,
                  style: TextStyle(
                      fontSize: 20, color: isHover ? Colors.black : Global.titleColor))
              : Container()
        ],
      ),
    );
  }
}