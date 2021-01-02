import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/horizontal_project_summary_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class AppsContentDesktop extends StatefulWidget {
  @override
  _AppsContentDesktopState createState() => _AppsContentDesktopState();
}

class _AppsContentDesktopState extends State<AppsContentDesktop> {
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
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,),
                  HorizontalProjectSummaryCard(
                    title: 'Locos X El Fútbol',
                    description: 'It is a system (mobile app & web app) for a 5-a-side soccer court. You can reserve the soccer court with the mobile app. The web app is for managers where they can manage the whole system and the reservations.',
                    framework: 'Flutter & ASP.NET',
                    status: 'Finished',
                    role: 'Project Manager, Programmer & Designer',
                    picName: 'lxf',
                    platforms: Row(
                      children: [
                        Icon(
                          Icons.android_rounded,
                          size: 40,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.apple,
                          size: 40,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.laptop,
                          size: 40,
                        ),
                      ],
                    ),
                    height: 485,
                    moreAction: () {
                      locator<NavigationService>().navigateTo(UnderConstructionRoute);
                    },
                  ),
                  HorizontalProjectSummaryCard(
                    title: 'Misas Parroquia de Lourdes',
                    description: 'It is a system (mobile app & web app) where you can reserve your space for a mass in the subsidiaries of Nuestra Señora de Lourdes Parish in Montes de Oca, San José, Costa Rica.',
                    framework: 'Flutter & Web',
                    status: 'Released',
                    role: 'Developer',
                    picName: 'misas',
                    platforms: Row(
                      children: [
                        Icon(
                          Icons.android_rounded,
                          size: 40,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.apple,
                          size: 40,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.laptop,
                          size: 40,
                        ),
                      ],
                    ),
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


