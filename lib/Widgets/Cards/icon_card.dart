import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class IconCard extends StatefulWidget {
  const IconCard({
    Key key,
    this.title,
    this.icon,
    this.link = '',
    this.isMail = false,
    this.isMobile = false,
    this.fontSize = 50,
    this.containerSize = 300,
    this.iconSize = 200,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String link;
  final bool isMail;
  final bool isMobile;
  final double fontSize;
  final double containerSize;
  final double iconSize;

  @override
  _IconCardState createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: () {
          widget.isMail ? Global.launchMailto() : Global.launchURL(widget.link);
        },
        child: Container(
          width: widget.containerSize,
          height: widget.containerSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                size: widget.iconSize,
                color: isHover || widget.isMobile
                    ? Colors.black
                    : Global.disabledColor,
              ),
              SizedBox(height: 10),
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: widget.fontSize,
                    color: isHover || widget.isMobile
                        ? Colors.black
                        : Global.disabledColor),
              )
            ],
          ),
        ),
      ).moveUpOnHover,
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
