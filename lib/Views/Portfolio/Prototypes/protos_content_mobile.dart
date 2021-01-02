import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/vertical_project_summary_card.dart';

class ProtosContentMobile extends StatefulWidget {
  @override
  _ProtosContentMobileState createState() => _ProtosContentMobileState();
}

class _ProtosContentMobileState extends State<ProtosContentMobile> {
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
                  title: 'Market Map',
                  description: 'It is a prototype of a mobile app where you can see a map of a market with its shops. Also, this prototype has a survey to detect COVID-19 (based on a point system).',
                  framework: 'Flutter',
                  status: 'Finished',
                  role: 'Developer',
                  picName: 'flutter',
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
                    ],
                  ),
                  width: size.width * 0.9,
                  moreAction: () {
                    locator<NavigationService>().navigateTo(MarketMapRoute);
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
