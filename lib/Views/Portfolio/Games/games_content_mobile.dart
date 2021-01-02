import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/vertical_game_summary_card.dart';

class GamesContentMobile extends StatefulWidget {
  @override
  _GamesContentMobileState createState() => _GamesContentMobileState();
}

class _GamesContentMobileState extends State<GamesContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalGameSummaryCard(
                  title: 'Space Me Out!',
                  description: 'Avoid obstacles between you and the space. Collect all the rockets and reach a higher altitude in each game.',
                  genre: 'Runner',
                  engine: 'Unity 3D',
                  role: 'Developer',
                  picName: 'smo',
                  platforms: Row(
                    children: [
                      Icon(
                        Icons.android_outlined,
                        size: 40,
                      ),
                      Icon(
                        FontAwesomeIcons.apple,
                        size: 40,
                      ),
                    ],
                  ),
                  width: size.width * 0.9,
                  moreAction: () {
                    locator<NavigationService>()
                        .navigateTo(UnderConstructionRoute);
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                VerticalGameSummaryCard(
                  title: 'Frienemies: Fighting Game',
                  description: 'Are we friends or enemies? Lets figure it out fighting. This is a fighting game with simple mechanics and graphics.',
                  genre: 'Fighting',
                  engine: 'Unity 3D',
                  role: 'Developer',
                  picName: 'frienemies',
                  platforms: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.laptop,
                        size: 40,
                      ),
                    ],
                  ),
                  width: size.width * 0.9,
                  moreAction: () {
                    locator<NavigationService>()
                        .navigateTo(UnderConstructionRoute);
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                VerticalGameSummaryCard(
                  title: 'School Day',
                  description: 'Simple memory game with school items. This was a demo of an attempted university project.',
                  genre: 'Puzzle',
                  engine: 'Unity 3D',
                  role: 'Developer',
                  picName: 'school-day',
                  platforms: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.internetExplorer,
                        size: 40,
                      ),
                    ],
                  ),
                  width: size.width * 0.9,
                  moreAction: () {
                    locator<NavigationService>()
                        .navigateTo(UnderConstructionRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
