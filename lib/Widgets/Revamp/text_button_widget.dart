import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Shared/global.dart';

class TextButtonWidget extends StatelessWidget {
  final String label;
  final Function action;
  final EdgeInsets padding;
  final Color borderColor;
  final Color innerColor;
  final double borderThickness;
  final bool isEnabled;
  final Color disabledBorderColor;
  final Color diabledInnerColor;
  final double disabledBorderThickness;

  const TextButtonWidget({
    Key key,
    @required this.label,
    @required this.action,
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
    this.borderColor = Global.primaryColor,
    this.innerColor = Colors.white,
    this.borderThickness = 1,
    this.isEnabled = true,
    this.disabledBorderColor = Colors.white,
    this.diabledInnerColor = Global.primaryColor,
    this.disabledBorderThickness = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return this.isEnabled
        ? TextButton(
            onPressed: this.action,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(this.innerColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: this.borderColor,
                    width: this.borderThickness,
                  ),
                ),
              ),
            ),
            child: Padding(
              padding: this.padding,
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 16,
                    color: this.borderColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        : TextButton(
            onPressed: () {},
            style: ButtonStyle(
              enableFeedback: false,
              backgroundColor:
                  MaterialStateProperty.all(this.diabledInnerColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: this.disabledBorderColor,
                    width: this.disabledBorderThickness,
                  ),
                ),
              ),
            ),
            child: Padding(
              padding: this.padding,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: this.disabledBorderColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
