import 'package:flutter/material.dart';
import 'Navigation/NavigationService.dart';
import 'package:url_strategy/url_strategy.dart';
import 'Navigation/locator.dart';
import 'Navigation/router.dart';

void main() {
  setupLocator();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bj Poyser - Game Developer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      builder: (context, child) => child,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
