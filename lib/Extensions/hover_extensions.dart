import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Effects/increase_size_on_hover.dart';
import 'package:portfolio/Widgets/Effects/translate_text_up_on_hover.dart';
import 'dart:html' as html;

import 'package:portfolio/Widgets/Effects/translate_up_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      cursor: SystemMouseCursors.click,
    );
  }

  Widget get moveUpOnHover {
    return TranslateUpOnHover(child: this);
  }

  Widget get moveTextUpOnHover {
    return TranslateTextUpOnHover(child: this);
  }

  Widget get increaseSizeOnHover {
    return IncreaseSizeOnHover(child: this);
  }
}
