import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';
import 'package:portfolio/Widgets/Links/SimpleLink.dart';

class GamesContentDesktop extends StatefulWidget {
  @override
  _GamesContentDesktopState createState() => _GamesContentDesktopState();
}

class _GamesContentDesktopState extends State<GamesContentDesktop> {
  final ScrollController _scrollController = ScrollController();
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
          child: Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                child: Column(
                  children: [
                    //SizedBox(height: 120,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProjectCard(
                          title: 'Space Me Out!',
                          picName: 'smo',
                          action: () {
                            locator<NavigationService>().navigateTo(SMORoute);
                          },
                          role: 'Developer',
                        ),
                        ProjectCard(
                          title: 'Frienemies',
                          picName: 'frienemies',
                          action: () {
                            locator<NavigationService>()
                                .navigateTo(FrienemiesRoute);
                          },
                          role: 'Developer',
                        ),
                        ProjectCard(
                          title: 'School Day',
                          picName: 'school-day',
                          action: () {
                            locator<NavigationService>()
                                .navigateTo(SchoolDayRoute);
                          },
                          role: 'Game Designer & Developer',
                        ),
                      ],
                    ),
                    /*SizedBox(height: 100,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HorizontalGameSummaryCard(
                                title: 'School Day',
                                picName: 'school-day',
                                action: () {
                                  locator<NavigationService>()
                                      .navigateTo(SchoolDayRoute);
                                },
                                role: 'Game Designer & Developer',
                                cardWidth: cardWidth,
                                cardHeight: cardHeight,
                              ),
                            ],
                          ),
                          SizedBox(height: 100,),*/
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
