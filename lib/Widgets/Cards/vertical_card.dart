import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Images/sizeable_image.dart';

class VerticalCard extends StatelessWidget {
  final String picName;
  final String picURL;
  final String title;
  final Widget message;

  const VerticalCard({
    Key key,
    this.picName,
    this.picURL,
    this.title,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 300;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeableImage(
              picName: picName,
              width: size,
              height: size,
            ),
            Container(
              width: size,
              height: size,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    message,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
