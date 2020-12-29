import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/presentation_card.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PresentationCard(title: 'About Me', picName: 'lol', navigationPath: AboutRoute,).moveUpOnHover,
        PresentationCard(title: 'Portfolio', picName: 'keyboard', navigationPath: PortfolioRoute,).moveUpOnHover,
        PresentationCard(title: 'Contact Me', picName: 'coffee', navigationPath: ContactRoute,).moveUpOnHover
      ],
    );
  }
}


