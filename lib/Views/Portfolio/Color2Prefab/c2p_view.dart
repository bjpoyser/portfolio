import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Views/Portfolio/Color2Prefab/c2p_content_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'c2p_content_desktop.dart';
import 'c2p_content_mobile.dart';

class Color2PrefabView extends StatefulWidget {
  @override
  _Color2PrefabViewState createState() => _Color2PrefabViewState();
}

class _Color2PrefabViewState extends State<Color2PrefabView> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: ScreenTypeLayout(
            desktop: Color2PrefabContentDesktop(),
            mobile: Color2PrefabContentMobile(),
            tablet: Color2PrefabContentTablet(),
          ))
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          alignment: Alignment.bottomRight,
          ringColor: Global.accentColor,
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 65.0,
          fabElevation: 10.0,
          fabIconBorder: CircleBorder(),
          fabColor: Global.accentColor,
          fabOpenColor: Global.secondAccentColor,
          fabOpenIcon: Icon(Icons.menu, color: Colors.white),
          fabCloseIcon: Icon(Icons.close, color: Colors.white),
          children: [
            ClipOval(
              child: Material(
                color: Global.accentColor, // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(AboutRoute);
                  },
                  splashColor: Global.accentColor, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.addressBook, color: Colors.white),
                        Text(
                          'About',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Global.accentColor, // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(PortfolioRoute);
                  },
                  splashColor: Global.accentColor, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.icons, color: Colors.white),
                        Text(
                          'Portfolio',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Global.accentColor, // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(ContactRoute);
                  },
                  splashColor: Global.accentColor,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.phoneFlip, color: Colors.white),
                        Text(
                          'Contact',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
