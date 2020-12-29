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
            SizedBox(height: 50),
            PresentationCard(title: 'About Me', picName: 'lol', navigationPath: AboutRoute, isMobile: true,),
            SizedBox(height: 50),
            PresentationCard(title: 'Portfolio', picName: 'keyboard', navigationPath: PortfolioRoute, isMobile: true,),
            SizedBox(height: 50),
            PresentationCard(title: 'Contact Me', picName: 'coffee', navigationPath: ContactRoute, isMobile: true,),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}