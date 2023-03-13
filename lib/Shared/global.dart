import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Global {
  //Colors

  //Blue
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
        color: primaryColor,
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
        color: primaryColor,
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
        color: primaryColor,
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

  //Revamp Globals

  //Colors
  static const Color primaryColor = Color.fromARGB(255, 0, 45, 59);

  //Text Styles
  static const TextStyle TitleStyle = TextStyle(
    fontSize: 60,
    color: primaryColor,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle Title2Style = TextStyle(
    fontSize: 35,
    color: primaryColor,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle SubtitleStyle = TextStyle(
    fontSize: 22,
    color: primaryColor,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle SubtitleStyle2 = TextStyle(
    fontSize: 18,
    color: primaryColor,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle NormalStyle = TextStyle(
    fontSize: 16,
    color: primaryColor,
  );

  static const TextStyle NormalBoldStyle = TextStyle(
    fontSize: 16,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle AltTitleStyle = TextStyle(
    fontSize: 60,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle AltTitle2Style = TextStyle(
    fontSize: 35,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle AltSubtitleStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle AltSubtitleStyle2 = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle AltNormalStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static const TextStyle AltNormalBoldStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  //Container Decorations
  static const Border DefaultBorder = Border(
    top: BorderSide(color: Global.primaryColor, width: 5),
    left: BorderSide(color: Global.primaryColor, width: 5),
    right: BorderSide(color: Global.primaryColor, width: 5),
    bottom: BorderSide(color: Global.primaryColor, width: 5),
  );
}
