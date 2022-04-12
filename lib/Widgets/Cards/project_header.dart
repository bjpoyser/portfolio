import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';
import 'package:portfolio/Shared/global.dart';

class ProjectHeader extends StatelessWidget {
  final String picName;
  final String projectTitle;
  final double titleContainerSize;

  const ProjectHeader({
    Key key,
    @required this.picName,
    @required this.projectTitle,
    this.titleContainerSize = 620,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: Global.cardBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizeableImage(picName: picName, width: 120),
            ],
          ),
        ),
        Container(
          width: titleContainerSize,
          height: 150,
          decoration: Global.cardBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                projectTitle,
                style: TextStyle(fontSize: Global.title1FontSize),
              ),
            ],
          ),
        )
      ],
    );
  }
}
