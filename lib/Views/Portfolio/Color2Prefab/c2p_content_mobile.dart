import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Images/QR_container.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';

class Color2PrefabContentMobile extends StatefulWidget {
  @override
  _Color2PrefabContentMobileState createState() =>
      _Color2PrefabContentMobileState();
}

class _Color2PrefabContentMobileState extends State<Color2PrefabContentMobile> {
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
                  padding: const EdgeInsets.only(bottom: 30),
                  child: VideoContainer(
                    width: size.width * 0.8,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2FMarket-Demo.mp4?alt=media&token=936964d3-bb78-4cda-a00f-9d22593b984e',
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
                            height: size.width,
                            decoration:
                                BoxDecoration(border: Border.all(width: 5)),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/carousel/c2p/c2p.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            QRContainer(
                              title: 'Tap to see',
                              picName: 'c2p-web',
                              marketURL:
                                  'https://assetstore.unity.com/packages/tools/level-design/color-2-prefab-193922',
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
