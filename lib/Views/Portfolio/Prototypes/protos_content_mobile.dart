import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';
import 'package:portfolio/Widgets/Cards/vertical_proto_card.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleCard(
                size: size.width * 0.9,
                title: 'Market Map',
              ),
              VerticalProtoCard(
                description: 'It is a prototype of a mobile app where you can see a map of a market with its shops. Also, this prototype has a survey to detect COVID-19 (based on a point system).',
                width: size.width * 0.9,
                framework: 'Flutter',
                platforms: Row(
                  children: [
                    Icon(
                      Icons.android_rounded,
                      size: 35,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      FontAwesomeIcons.apple,
                      size: 35,
                    ),
                  ],
                ),
                moreAction: () {
                  locator<NavigationService>().navigateTo(MarketMapRoute);
                },
                role: 'Developer',
              )
            ],
          ),
        ),
      ),
    );
  }
}
