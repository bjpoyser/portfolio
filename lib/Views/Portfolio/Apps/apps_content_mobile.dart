import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';

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
                ProjectCard(
                  title: 'Locos X El Fútbol',
                  picName: 'lxf',
                  action: () {
                    locator<NavigationService>().navigateTo(SMORoute);
                  },
                  role: 'Project Manager, Programmer & Designer',
                ),
                SizedBox(height: 100),
                ProjectCard(
                  title: 'Misas Lourdes',
                  picName: 'misas',
                  action: () {
                    locator<NavigationService>().navigateTo(MassRoute);
                  },
                  role: 'Developer',
                ),
                SizedBox(height: 100),
                ProjectCard(
                  title: 'Market Map',
                  picName: 'flutter',
                  action: () {
                    locator<NavigationService>().navigateTo(MarketMapRoute);
                  },
                  role: 'Developer',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
