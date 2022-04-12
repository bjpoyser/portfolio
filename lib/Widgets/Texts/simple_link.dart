import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class SimpleLink extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color hoveredColor;
  final Color normalColor;
  final dynamic action;

  const SimpleLink({
    Key key,
    @required this.text,
    @required this.action,
    this.fontSize = Global.linkFontSize,
    this.hoveredColor = Colors.black,
    this.normalColor = Global.secondAccentColor,
  }) : super(key: key);

  @override
  _SimpleLinkState createState() => _SimpleLinkState();
}

class _SimpleLinkState extends State<SimpleLink> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: widget.action,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.fontSize,
              color: isHover ? widget.hoveredColor : widget.normalColor),
        ).moveTextUpOnHover,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
