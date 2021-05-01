import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class AppsContentDesktop extends StatefulWidget {
  @override
  _AppsContentDesktopState createState() => _AppsContentDesktopState();
}

class _AppsContentDesktopState extends State<AppsContentDesktop> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 400,
          picName: 'plane',
          padding: const EdgeInsets.only(top: 100, right: 900),
        ),
        Center(
          child: Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ProjectCard(
                          title: 'Locos X El Fútbol',
                          picName: 'lxf',
                          action: () {
                            locator<NavigationService>().navigateTo(LxFRoute);
                          },
                          role: 'Project Manager, Programmer & Designer',
                        ),
                        ProjectCard(
                          title: 'Misas Lourdes',
                          picName: 'misas',
                          action: () {
                            locator<NavigationService>().navigateTo(MassRoute);
                          },
                          role: 'Developer',
                        ),
                        ProjectCard(
                          title: 'Market Map',
                          picName: 'flutter',
                          action: () {
                            locator<NavigationService>()
                                .navigateTo(MarketMapRoute);
                          },
                          role: 'Developer',
                        ),
                      ],
                    ),
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
