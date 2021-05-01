import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/icon_route_card.dart';

class PortfolioContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconRouteCard(title: 'Apps', icon: FontAwesomeIcons.mobileAlt, navigationPath: AppsRoute,),
              IconRouteCard(title: 'Games', icon: FontAwesomeIcons.ghost, navigationPath: GamesRoute,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconRouteCard(title: 'Fonts', icon: FontAwesomeIcons.font, navigationPath: FontsRoute,),
              IconRouteCard(title: 'Assets', icon: FontAwesomeIcons.draftingCompass, navigationPath: ToolsRoute,)
            ],
          ),
        ],
      )
    );
  }
}
