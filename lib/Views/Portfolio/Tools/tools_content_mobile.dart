import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';

class ToolsContentMobile extends StatefulWidget {
  @override
  _ToolsContentMobileState createState() => _ToolsContentMobileState();
}

class _ToolsContentMobileState extends State<ToolsContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProjectCard(
                  title: 'Color 2 Prefab',
                  role: 'Developer',
                  picName: 'c2p',
                  action: () {
                    locator<NavigationService>().navigateTo(C2PRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
