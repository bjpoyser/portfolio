import 'package:flutter/material.dart';

class IncreaseSizeOnHover extends StatefulWidget {
  final Widget child;

  const IncreaseSizeOnHover({Key key, this.child}) : super(key: key);

  @override
  _IncreaseSizeOnHoverState createState() => _IncreaseSizeOnHoverState();
}

class _IncreaseSizeOnHoverState extends State<IncreaseSizeOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..scale(1.05, 1.05);

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

  void _mouseEnter(bool hovering){
    setState(() {
      _hovering = hovering;
    });
  }
}