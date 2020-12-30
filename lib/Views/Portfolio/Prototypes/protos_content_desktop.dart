import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/horizontal_proto_card.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

class ProtosContentDesktop extends StatefulWidget {
  @override
  _ProtosContentDesktopState createState() => _ProtosContentDesktopState();
}

class _ProtosContentDesktopState extends State<ProtosContentDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 400),
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/silhouette-rocket.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 15.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleCard(
                size: 800,
                title: 'Market Map',
              ),
              HorizontalProtoCard(
                description:
                    'It is a prototype of a mobile app where you can see a map of a market with its shops. Also, this prototype has a survey to detect COVID-19 (based on a point system).',
                height: 450.0,
                width: 800.0,
                framework: 'Flutter',
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
                moreAction: () {
                  locator<NavigationService>().navigateTo(MarketMapRoute);
                },
                role: 'Developer',
              )
            ],
          ),
        ),
      ],
    );
  }
}
