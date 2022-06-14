import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Global {
  //Colors
  static const Color disabledColor = const Color(0xff7e7e7e);
  static const Color accentColor = const Color(0xff003087);
  static const Color secondAccentColor = const Color(0xff2E6DB4);

  //Font Sizes
  static const double title1FontSize = 40;
  static const double title2FontSize = 30;
  static const double subtitleFontSize = 20;
  static const double textFontSize = 18;
  static const double linkFontSize = 16;
  static const double itemFontSize = 14;

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

  static const BoxDecoration blackBoxDecoration = BoxDecoration(
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

  static const BoxDecoration softShadowDecoration = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        offset: Offset(0, 0),
        blurRadius: 10.0,
        spreadRadius: 1.0,
      ),
    ],
    color: Colors.white,
  );

  static launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo cargar la dirección';
    }
  }

  static launchMailto() async {
    final mailtoLink = Mailto(
      to: ['bj_hubs@hotmail.com'],
      subject: '',
      body: '',
    );
    await launch('$mailtoLink');
  }
}
