import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Widgets/Revamp/text_button_widget.dart';

import '../Images/sizeable_image.dart';
import 'package:flutter/material.dart';

class PersonalProject extends StatelessWidget {
  final String projectName;
  final String description;
  final String availableAt;
  final String platform;
  final String image;
  final Function action;

  const PersonalProject({
    Key key,
    @required this.projectName,
    @required this.description,
    @required this.availableAt,
    @required this.platform,
    @required this.image,
    @required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        color: Global.primaryColor,
      ),
      width: 500,
      height: 230,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizeableImage(
                  picName: this.image,
                  width: 180,
                  height: 180,
                  hasBorder: true,
                ),
                Container(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          this.projectName,
                          style: Global.AltSubtitleStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 20, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              this.description,
                              style: Global.AltNormalStyle,
                            ),
                            Text(
                              this.availableAt,
                              style: Global.AltNormalStyle,
                            ),
                            Text(
                              this.platform,
                              style: Global.AltNormalStyle,
                            ),
                          ],
                        ),
                      ),
                      Center(
                          child:
                              TextButtonWidget(label: 'More', action: action)),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
