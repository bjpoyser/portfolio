import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Shared/global.dart';

class TextButtonWidget extends StatelessWidget {
  final String label;

  const TextButtonWidget({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Global.primaryColor),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 16,
              color: Global.primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
