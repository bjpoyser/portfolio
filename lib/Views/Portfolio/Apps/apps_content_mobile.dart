import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/vertical_project_summary_card.dart';

class AppsContentMobile extends StatefulWidget {
  @override
  _AppsContentMobileState createState() => _AppsContentMobileState();
}

class _AppsContentMobileState extends State<AppsContentMobile> {
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
                VerticalProjectSummaryCard(
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
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.apple,
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.laptop,
                        size: 30,
                      ),
                    ],
                  ),
                  width: size.width * 0.9,
                  moreAction: () {
                    locator<NavigationService>()
                        .navigateTo(UnderConstructionRoute);
                  },
                ),
                SizedBox(height: 100,),
                VerticalProjectSummaryCard(
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
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.apple,
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        FontAwesomeIcons.laptop,
                        size: 30,
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
