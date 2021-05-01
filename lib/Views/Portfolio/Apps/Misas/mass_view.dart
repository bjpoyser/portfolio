import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Views/Portfolio/Apps/Misas/mass_content_desktop.dart';
import 'package:portfolio/Views/Portfolio/Apps/Misas/mass_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';


class MassView extends StatefulWidget {
  @override
  _MassViewState createState() => _MassViewState();
}

class _MassViewState extends State<MassView> {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: ScreenTypeLayout(
            desktop: MassContentDesktop(),
            mobile: MassContentMobile(),
          ))
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          key: fabKey,
          alignment: Alignment.bottomRight,
          ringColor: Colors.lightGreenAccent[700],
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 65.0,
          fabElevation: 10.0,
          fabIconBorder: CircleBorder(),
          fabColor: Colors.lightGreenAccent[700],
          children: [
            ClipOval(
              child: Material(
                color: Colors.lightGreenAccent[700], // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(HomeRoute);
                  },
                  splashColor: Colors.lightGreenAccent, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.home),
                        Text(
                          'Home',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.lightGreenAccent[700], // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(AppsRoute);
                  },
                  splashColor: Colors.lightGreenAccent, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.arrowLeft),
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.lightGreenAccent[700], // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(PortfolioRoute);
                  },
                  splashColor: Colors.lightGreenAccent, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.icons),
                        Text(
                          'Portfolio',
                          style: TextStyle(fontSize: 20),
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