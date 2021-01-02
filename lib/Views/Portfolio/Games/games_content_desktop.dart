import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/horizontal_game_summary_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class GamesContentDesktop extends StatefulWidget {
  @override
  _GamesContentDesktopState createState() => _GamesContentDesktopState();
}

class _GamesContentDesktopState extends State<GamesContentDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 800,
          picName: 'gladiator',
          padding: const EdgeInsets.only(top: 100, left: 900),
        ),
        Center(
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  HorizontalGameSummaryCard(
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
                    height: 420,
                    moreAction: () {
                      locator<NavigationService>().navigateTo(UnderConstructionRoute);
                    },
                  ),
                  HorizontalGameSummaryCard(
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
                    height: 420,
                    moreAction: () {
                      locator<NavigationService>().navigateTo(UnderConstructionRoute);
                    },
                  ),
                  HorizontalGameSummaryCard(
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
                    height: 420,
                    moreAction: () {
                      locator<NavigationService>().navigateTo(UnderConstructionRoute);
                    },
                  ),
                  SizedBox(height: 150,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


