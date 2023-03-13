import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Revamp/text_button_widget.dart';

import '../../Shared/global.dart';

class CarouselProject extends StatelessWidget {
  final String projectName;
  final String role;
  final String image;
  final Function action;

  const CarouselProject({
    Key key,
    @required this.projectName,
    @required this.role,
    @required this.image,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(35)),
        color: Global.primaryColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: 200,
              height: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image(
                  image: AssetImage(
                    'assets/images/snapshots/${this.image}_snapshot.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(this.projectName, style: Global.AltSubtitleStyle2),
          Text(this.role, style: Global.AltSubtitleStyle2),
          SizedBox(height: 20),
          TextButtonWidget(
            label: 'More',
            action: () {},
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
