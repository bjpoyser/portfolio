import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/icon_route_card.dart';

class PortfolioContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          IconRouteCard(
            title: 'Apps',
            icon: FontAwesomeIcons.mobileAlt,
            navigationPath: UnderConstructionRoute,
            isMobile: true,
          ),
          SizedBox(height: 50,),
          IconRouteCard(
            title: 'Games',
            icon: FontAwesomeIcons.ghost,
            navigationPath: UnderConstructionRoute,
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
            title: 'Prototypes',
            icon: FontAwesomeIcons.draftingCompass,
            navigationPath: ProtosRoute,
            isMobile: true,
          ),
          SizedBox(height: 50,),
        ],
      ),
    ));
  }
}
