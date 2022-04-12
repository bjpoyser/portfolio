import 'package:flutter/material.dart';

class TranslateTextUpOnHover extends StatefulWidget {
  final Widget child;

  const TranslateTextUpOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateTextUpOnHoverState createState() => _TranslateTextUpOnHoverState();
}

class _TranslateTextUpOnHoverState extends State<TranslateTextUpOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
