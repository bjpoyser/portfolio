import 'package:flutter/material.dart';

abstract class Global {
  //Colors
  static const Color titleColor = const Color(0xff7e7e7e);

  //Shadow
  static const BoxDecoration cardBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black45,
        offset: Offset(0, 0),
        blurRadius: 10.0,
        spreadRadius: 1.0,
      ),
    ],
    color: Colors.white,
  );

  static const BoxDecoration videoBoxDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black45,
        offset: Offset(0, 0),
        blurRadius: 10.0,
        spreadRadius: 1.0,
      ),
    ],
    color: Colors.black,
  );
}
