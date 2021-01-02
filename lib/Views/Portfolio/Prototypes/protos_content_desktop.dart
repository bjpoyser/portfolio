import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/horizontal_project_summary_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class ProtosContentDesktop extends StatefulWidget {
  @override
  _ProtosContentDesktopState createState() => _ProtosContentDesktopState();
}

class _ProtosContentDesktopState extends State<ProtosContentDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 600,
          picName: 'star',
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
                  HorizontalProjectSummaryCard(
                    title: 'Market Map',
                    description:'It is a prototype of a mobile app where you can see a map of a market with its shops. Also, this prototype has a survey to detect COVID-19 (based on a point system).',
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
                    status: 'Finished',
                    role: 'Developer',
                    picName: 'flutter',
                    moreAction: () {
                      locator<NavigationService>().navigateTo(MarketMapRoute);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
