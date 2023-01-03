import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class PortfolioContentDesktop extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 400,
          width: 800,
          picName: 'plane',
          padding: const EdgeInsets.only(top: 200, left: 400),
        ),
        SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
            child: Center(
              child: size.width > 1200
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProjectCard(
                              title: 'Planet Cube: Edge',
                              role: 'Developer',
                              picName: 'pce',
                              action: () => locator<NavigationService>()
                                  .navigateTo(PCERoute),
                            ),
                            ProjectCard(
                              title: 'Purple Frog',
                              role: 'Level Designer & Additional Programming',
                              picName: 'pf',
                              action: () => locator<NavigationService>()
                                  .navigateTo(PurpleFrogRoute),
                            ),
                            ProjectCard(
                              title: 'AI Control System',
                              role: 'Technical Designer & Developer',
                              picName: 'unreal',
                              action: () => locator<NavigationService>()
                                  .navigateTo(AIRoute),
                            ),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProjectCard(
                              title: 'Solve & Rescue',
                              role: 'Programmer',
                              picName: 'sr',
                              action: () => locator<NavigationService>()
                                  .navigateTo(SolveAndRescueRoute),
                            ),
                            /*ProjectCard(
                              title: 'Dollify',
                              role: 'Developer',
                              picName: 'dollify',
                              action: () => locator<NavigationService>()
                                  .navigateTo(DollifyRoute),
                            ),*/
                            ProjectCard(
                              title: 'Dance Jam',
                              role: 'Developer',
                              picName: 'dancejam',
                              action: () => locator<NavigationService>()
                                  .navigateTo(DanceJamRoute),
                            ),
                            ProjectCard(
                              title: 'Color 2 Prefab',
                              role: 'Developer',
                              picName: 'c2p',
                              action: () => locator<NavigationService>()
                                  .navigateTo(C2PRoute),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProjectCard(
                              title: 'Planet Cube: Edge',
                              role: 'Developer',
                              picName: 'pce',
                              action: () => locator<NavigationService>()
                                  .navigateTo(PCERoute),
                            ),
                            ProjectCard(
                              title: 'Purple Frog',
                              role: 'Level Designer & Additional Programming',
                              picName: 'pf',
                              action: () => locator<NavigationService>()
                                  .navigateTo(PurpleFrogRoute),
                            ),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProjectCard(
                              title: 'Color 2 Prefab',
                              role: 'Developer',
                              picName: 'c2p',
                              action: () => locator<NavigationService>()
                                  .navigateTo(C2PRoute),
                            ),
                            ProjectCard(
                              title: 'Solve & Rescue',
                              role: 'Programmer',
                              picName: 'sr',
                              action: () => locator<NavigationService>()
                                  .navigateTo(SolveAndRescueRoute),
                            )
                            /*ProjectCard(
                              title: 'Dollify',
                              role: 'Developer',
                              picName: 'dollify',
                              action: () => locator<NavigationService>()
                                  .navigateTo(DollifyRoute),
                            ),*/
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProjectCard(
                              title: 'AI Control System',
                              role: 'Technical Designer & Developer',
                              picName: 'unreal',
                              action: () => locator<NavigationService>()
                                  .navigateTo(AIRoute),
                            ),
                            ProjectCard(
                              title: 'Dance Jam',
                              role: 'Developer',
                              picName: 'dancejam',
                              action: () => locator<NavigationService>()
                                  .navigateTo(DanceJamRoute),
                            ),
                          ],
                        )
                      ],
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
