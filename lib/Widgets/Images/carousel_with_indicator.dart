import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  final double height;
  final List<Image> imgList;

  const CarouselWithIndicator({Key key, this.height, @required this.imgList}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CarouselSlider(
            items: widget.imgList,
            options: CarouselOptions(
              height: widget.height,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.map((url) {
              int index = widget.imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ]
      );
  }
}