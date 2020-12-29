import 'package:flutter/material.dart';

class TranslateRightOnHover extends StatefulWidget {
  final Widget child;

  const TranslateRightOnHover({Key key, this.child}) : super(key: key);

  @override
  _TranslateRightOnHoverState createState() => _TranslateRightOnHoverState();
}

class _TranslateRightOnHoverState extends State<TranslateRightOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(15, 0, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: widget.child,
          transform: _hovering ? hoverTransform : nonHoverTransform,
        ),
    );
  }

  void _mouseEnter(bool hovering){
    setState(() {
      _hovering = hovering;
    });
  }
}