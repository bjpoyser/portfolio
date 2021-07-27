import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ClickableIcon extends StatefulWidget {
  final IconData icon;
  final dynamic action;
  final Color normalColor;
  final Color hoverColor;
  final double size;

  const ClickableIcon({
    Key key,
    @required this.icon,
    @required this.action,
    this.normalColor = Global.titleColor,
    this.hoverColor = Colors.black,
    this.size = 50,
  }) : super(key: key);

  @override
  _ClickableIconState createState() => _ClickableIconState();
}

class _ClickableIconState extends State<ClickableIcon> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: GestureDetector(
        onTap: widget.action,
        child: Icon(
          widget.icon,
          size: widget.size,
          color: isHover ? widget.hoverColor: widget.normalColor,
        ).increaseSizeOnHover,
      ),
    ).showCursorOnHover;
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
