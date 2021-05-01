import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

import '../description_texts.dart';

class HorizontalCard extends StatefulWidget {
  final String picName;
  final String picURL;
  final String title;
  final String subtitle;
  final String secondSubtitle;
  final String thirdSubtitle;
  final String fourthSubtitle;
  final String fifthSubtitle;
  final bool isLeft;

  const HorizontalCard(
      {Key key,
      @required this.picName,
      this.title = '',
      this.subtitle = '',
      this.secondSubtitle = '',
      this.thirdSubtitle = '',
      this.fourthSubtitle = '',
      this.fifthSubtitle = '',
      this.isLeft = true,
      this.picURL})
      : super(key: key);

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: widget.isLeft
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Global.launchURL(widget.picURL);
                  },
                  child: SizeableImage(
                    width: 350,
                    height: 200,
                    picName: widget.picName,
                  ).showCursorOnHover,
                ),
                SizedBox(
                  width: 30,
                ),
                DescriptionTexts(widget: widget, isHover: isHover),
              ],
            ).moveRightOnHover
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DescriptionTexts(widget: widget, isHover: isHover),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Global.launchURL(widget.picURL);
                  },
                  child: SizeableImage(
                    width: 350,
                    height: 200,
                    picName: widget.picName,
                  ).showCursorOnHover,
                ),
              ],
            ).moveLeftOnHover,
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}


