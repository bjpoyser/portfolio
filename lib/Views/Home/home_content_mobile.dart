import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/presentation_card.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
              child: PresentationCard(title: 'About Me', picName: 'lol', navigationPath: AboutRoute, isMobile: true,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
              child: PresentationCard(title: 'Portfolio', picName: 'keyboard', navigationPath: PortfolioRoute, isMobile: true,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
              child: PresentationCard(title: 'Contact Me', picName: 'coffee', navigationPath: ContactRoute, isMobile: true,),
            )
          ],
        ),
      ),
    );
  }
}