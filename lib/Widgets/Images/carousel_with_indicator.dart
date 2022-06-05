import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';
import 'package:portfolio/Extensions/hover_extensions.dart';

class CarouselWithIndicator extends StatefulWidget {
  final double height;
  final List<Widget> imgList;
  final Duration transition;
  final EdgeInsetsGeometry carouselPadding;
  final bool optimaze;

  const CarouselWithIndicator({
    Key key,
    this.height,
    @required this.imgList,
    this.transition = const Duration(seconds: 4),
    this.carouselPadding =
        const EdgeInsets.only(top: 20, bottom: 15, left: 20, right: 20),
    this.optimaze = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  bool isHover = false;
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.carouselPadding,
      child: Column(children: [
        Container(
          height: widget.height,
          child: CarouselSlider(
            carouselController: carouselController,
            items: widget.imgList,
            options: CarouselOptions(
                height: widget.height,
                enlargeCenterPage: !widget.optimaze,
                autoPlayCurve:
                    widget.optimaze ? Curves.linear : Curves.fastOutSlowIn,
                pageSnapping: !widget.optimaze,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: widget.transition,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (e) => _mouseEnter(true),
              onExit: (e) => _mouseEnter(false),
              child: GestureDetector(
                onTap: () {
                  carouselController.animateToPage(index);
                },
                child: Container(
                  width: 15.0,
                  height: 15.0,
                  margin: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Global.secondAccentColor
                        : Global.disabledColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 0),
                        blurRadius: 2.5,
                        spreadRadius: 0.6,
                      ),
                    ],
                  ),
                ),
              ).increaseSizeOnHover,
            );
          }).toList(),
        ),
      ]),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }
}
