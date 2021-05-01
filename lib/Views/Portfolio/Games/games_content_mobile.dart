import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';

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
                SizedBox(height: 30),
                ProjectCard(
                  title: 'Space Me Out!',
                  picName: 'smo',
                  action: () {
                    locator<NavigationService>().navigateTo(SMORoute);
                  },
                  role: 'Developer',
                ),
                SizedBox(height: 50),
                ProjectCard(
                  title: 'Frienemies',
                  picName: 'frienemies',
                  action: () {
                    locator<NavigationService>().navigateTo(FrienemiesRoute);
                  },
                  role: 'Developer',
                ),
                SizedBox(height: 50),
                ProjectCard(
                  title: 'School Day',
                  picName: 'school-day',
                  action: () {
                    locator<NavigationService>().navigateTo(SchoolDayRoute);
                  },
                  role: 'Game Designer & Developer',
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
