import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';

class DanceJamContentMobile extends StatefulWidget {
  @override
  _DanceJamContentMobileState createState() => _DanceJamContentMobileState();
}

class _DanceJamContentMobileState extends State<DanceJamContentMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FDollify-Demo.mp4?alt=media&token=631c301a-aadb-4c07-b969-c24dca164860',
                  ),
                ),
                Container(
                  width: size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: size.width,
                            child: CarouselWithIndicator(
                              height: size.width,
                              imgList: imgList,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            QRContainer(
                              title: 'Tap for Android',
                              picName: 'dollify-android',
                              marketURL:
                                  'https://play.google.com/store/apps/details?id=com.davexp.dollify',
                              fontSize: 16,
                            ),
                            SizedBox(height: 20),
                            QRContainer(
                              title: 'Tap for Apple',
                              picName: 'dollify-apple',
                              marketURL:
                                  'https://apps.apple.com/app/id1444697551',
                              fontSize: 16,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<Widget> imgList = [
  smallImage(240, 'carousel/dollify/me-doll'),
  smallImage(240, 'carousel/dollify/me-ella-dolls'),
  smallImage(240, 'carousel/dollify/wal-zer-dolls'),
  smallImage(240, 'carousel/dollify/avatar'),
  smallImage(240, 'carousel/dollify/chico-bestia'),
];
