import 'package:flutter/material.dart';
import 'package:portfolio/Navigation/NavigationService.dart';
import 'package:portfolio/Navigation/locator.dart';
import 'package:portfolio/Navigation/router.dart';
import 'package:portfolio/Widgets/Cards/project_card.dart';
import 'package:portfolio/Widgets/Images/silhouette_container.dart';

class ToolsContentDesktop extends StatefulWidget {
  @override
  _ToolsContentDesktopState createState() => _ToolsContentDesktopState();
}

class _ToolsContentDesktopState extends State<ToolsContentDesktop> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SilhouetteContainer(
          height: 600,
          picName: 'star',
          padding: const EdgeInsets.only(top: 100, right: 900),
        ),
        Center(
          child: Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        ),
      ],
    );
  }
}
