import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Views/About/about_view.dart';
import 'package:portfolio/Views/Contact/contact_view.dart';
import 'package:portfolio/Views/Home/home_view.dart';
import 'package:portfolio/Views/Portfolio/Apps/LxF/lxf_view.dart';
import 'package:portfolio/Views/Portfolio/Apps/MarketMap/market_map_view.dart';
import 'package:portfolio/Views/Portfolio/Apps/Misas/mass_view.dart';
import 'package:portfolio/Views/Portfolio/Apps/apps_view.dart';
import 'package:portfolio/Views/Portfolio/Fonts/fonts_view.dart';
import 'package:portfolio/Views/Portfolio/Games/Frienemies/frienemies_view.dart';
import 'package:portfolio/Views/Portfolio/Games/SMO/smo_view.dart';
import 'package:portfolio/Views/Portfolio/Games/SchoolDay/school_day_view.dart';
import 'package:portfolio/Views/Portfolio/Games/games_view.dart';
import 'package:portfolio/Views/Portfolio/Tools/Color2Prefab/c2p_view.dart';
import 'package:portfolio/Views/Portfolio/Tools/tools_view.dart';
import 'package:portfolio/Views/Portfolio/portfolio_view.dart';

const String HomeRoute = '/';
const String AboutRoute = '/about';
const String ContactRoute = '/contact';
const String PortfolioRoute = '/portfolio';
const String FontsRoute = '/portfolio/fonts';
const String ToolsRoute = '/portfolio/assets';
const String C2PRoute = '/portfolio/assets/c2p';
const String AppsRoute = '/portfolio/apps';
const String LxFRoute = '/portfolio/apps/lxf';
const String MassRoute = '/portfolio/apps/misas-lourdes';
const String MarketMapRoute = '/portfolio/APPS/market-map';
const String GamesRoute = '/portfolio/games';
const String SchoolDayRoute = '/portfolio/games/school-day';
const String FrienemiesRoute = '/portfolio/games/frienemies';
const String SMORoute = '/portfolio/games/smo';
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
    case FontsRoute:
      return _getPageRoute(FontsView(), settings);
    case ToolsRoute:
      return _getPageRoute(ProtosView(), settings);
    case C2PRoute:
      return _getPageRoute(Color2PrefabView(), settings);
    case AppsRoute:
      return _getPageRoute(AppsView(), settings);
    case LxFRoute:
      return _getPageRoute(LxFView(), settings);
    case MassRoute:
      return _getPageRoute(MassView(), settings);
    case MarketMapRoute:
      return _getPageRoute(MarketMapView(), settings);
    case GamesRoute:
      return _getPageRoute(GamesView(), settings);
    case SchoolDayRoute:
      return _getPageRoute(SchoolDayView(), settings);
    case FrienemiesRoute:
      return _getPageRoute(FrienemiesView(), settings);
    case SMORoute:
      return _getPageRoute(SMOView(), settings);
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
                    locator<NavigationService>().navigateTo(AboutRoute);
                  },
                  splashColor: Colors.lightGreenAccent, // inkwell color
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.addressBook),
                        Text(
                          'About',
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
            ClipOval(
              child: Material(
                color: Colors.lightGreenAccent[700], // button color
                child: InkWell(
                  onTap: () {
                    locator<NavigationService>().navigateTo(ContactRoute);
                  },
                  splashColor: Colors.lightGreenAccent,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.phoneAlt),
                        Text(
                          'Contact',
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
