import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/Widgets/TranslateOnHover/translate_left_on_hover.dart';
import 'package:portfolio/Widgets/TranslateOnHover/translate_right_on_hover.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:portfolio/Widgets/TranslateOnHover/translate_up_on_hover.dart';

extension HoverExtensions on Widget{
  static final appContainer = html.window.document.getElementById('app-container');

  Widget get showCursorOnHover{
    return MouseRegion(
      child: this,
      cursor: SystemMouseCursors.click,
    );
  }

  Widget get moveUpOnHover {
    return TranslateUpOnHover(
      child: this
    );
  }

  Widget get moveLeftOnHover {
    return TranslateLeftOnHover(
      child: this
    );
  }

  Widget get moveRightOnHover {
    return TranslateRightOnHover(
      child: this
    );
  }
}