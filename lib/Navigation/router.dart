import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Views/About/about_view.dart';
import 'package:portfolio/Views/Contact/contact_view.dart';
import 'package:portfolio/Views/Home/home_view.dart';
import 'package:portfolio/Views/Portfolio/Color2Prefab/c2p_view.dart';
import 'package:portfolio/Views/Portfolio/Dollify/dollify_view.dart';
import 'package:portfolio/Views/Portfolio/PurpleFrog/purple_frog_view.dart';
import 'package:portfolio/Views/Portfolio/portfolio_view.dart';

import '../Views/Portfolio/DanceJam/dancejam_view.dart';

const String HomeRoute = '/';
const String AboutRoute = '/about';
const String ContactRoute = '/contact';
const String PortfolioRoute = '/portfolio';
const String C2PRoute = '/portfolio/c2p';
const String DollifyRoute = '/portfolio/dollify';
const String PurpleFrogRoute = '/portfolio/save-the-purple-frog';
const String DanceJamRoute = '/portfolio/DanceJam';
const String UnderConstructionRoute = '/underConstruction';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case ContactRoute:
      return _getPageRoute(ContactView(), settings);
    case PortfolioRoute:
      return _getPageRoute(PortfolioView(), settings);
    case C2PRoute:
      return _getPageRoute(Color2PrefabView(), settings);
    case DollifyRoute:
      return _getPageRoute(DollifyView(), settings);
    case DanceJamRoute:
      return _getPageRoute(DanceJamView(), settings);
    case PurpleFrogRoute:
      return _getPageRoute(PurpleFrogView(), settings);
    default:
      return _getPageRoute(UnderConstruction(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class UnderConstruction extends StatelessWidget {
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 400,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.paintRoller,
                size: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Under Construction',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
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
                    locator<NavigationService>().navigateTo(HomeRoute);
                  },
                  splashColor: Global.accentColor, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.house, color: Colors.white),
                        Text(
                          'Home',
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
