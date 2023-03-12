import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Shared/global.dart';

class PlatformsWidget extends StatelessWidget {
  final bool isOnSteam;
  final bool isOnEpic;
  final bool isOnPS;
  final bool isOnXbox;
  final bool isOnSwitch;
  final bool isOnAndroid;
  final bool isOniOS;

  const PlatformsWidget({
    Key key,
    this.isOnSteam = false,
    this.isOnEpic = false,
    this.isOnPS = false,
    this.isOnXbox = false,
    this.isOnSwitch = false,
    this.isOnAndroid = false,
    this.isOniOS = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        this.isOnSteam
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.steam,
                  color: Global.primaryColor,
                  size: 35,
                ),
              )
            : Container(),
        this.isOnEpic
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 35,
                  child: Image(
                    image: AssetImage('assets/images/UI/epic_icon.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              )
            : Container(),
        this.isOnPS
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.playstation,
                  color: Global.primaryColor,
                  size: 35,
                ),
              )
            : Container(),
        this.isOnXbox
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.xbox,
                  color: Global.primaryColor,
                  size: 35,
                ),
              )
            : Container(),
        this.isOnSwitch
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 35,
                  child: Image(
                    image: AssetImage('assets/images/UI/switch_icon.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              )
            : Container(),
        this.isOnAndroid
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.android,
                  color: Global.primaryColor,
                  size: 35,
                ),
              )
            : Container(),
        this.isOniOS
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.appStoreIos,
                  color: Global.primaryColor,
                  size: 35,
                ),
              )
            : Container(),
      ],
    );
  }
}
