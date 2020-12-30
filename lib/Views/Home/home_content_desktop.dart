import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/presentation_card.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Text(
                  'Benoit Poyser Acuña',
                  style: TextStyle(fontSize: 60),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Game & Software Developer',
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PresentationCard(
                  title: 'About Me',
                  picName: 'lol',
                  navigationPath: AboutRoute,
                ).moveUpOnHover,
                PresentationCard(
                  title: 'Portfolio',
                  picName: 'keyboard',
                  navigationPath: PortfolioRoute,
                ).moveUpOnHover,
                PresentationCard(
                  title: 'Contact Me',
                  picName: 'coffee',
                  navigationPath: ContactRoute,
                ).moveUpOnHover
              ],
            ),
          ),
        ],
      ),
    );
  }
}
