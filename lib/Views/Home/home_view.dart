import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Views/Home/home_content_mobile.dart';
import 'package:portfolio/Views/home_desktop.dart';
import 'package:portfolio/Widgets/Revamp/languages_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: ScreenTypeLayout(
              desktop: HomePage(),
              mobile: HomeContentMobile(),
              tablet: HomeContentMobile(),
            ),
          ),
          LanguagesBar(isEnglish: true),
        ],
      ),
    );
  }
}
