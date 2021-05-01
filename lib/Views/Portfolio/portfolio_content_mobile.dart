import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/icon_route_card.dart';

class PortfolioContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: SingleChildScrollView(
      child: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            IconRouteCard(
              title: 'Apps',
              icon: FontAwesomeIcons.mobileAlt,
              navigationPath: AppsRoute,
              isMobile: true,
            ),
            SizedBox(height: 50,),
            IconRouteCard(
              title: 'Games',
              icon: FontAwesomeIcons.ghost,
              navigationPath: GamesRoute,
              isMobile: true,
            ),
            SizedBox(height: 50,),
            IconRouteCard(
              title: 'Fonts',
              icon: FontAwesomeIcons.font,
              navigationPath: FontsRoute,
              isMobile: true,
            ),
            SizedBox(height: 50,),
            IconRouteCard(
              title: 'Assets',
              icon: FontAwesomeIcons.draftingCompass,
              navigationPath: ToolsRoute,
              isMobile: true,
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    ));
  }
}
