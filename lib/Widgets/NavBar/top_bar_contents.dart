import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color(0xff002D3B),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 60),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  child: MenuItem(
                    isHovering: _isHovering,
                    label: 'Home',
                    index: 0,
                  ),
                ),
                SizedBox(width: 60),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  child: MenuItem(
                    isHovering: _isHovering,
                    label: 'Work',
                    index: 1,
                  ),
                ),
                SizedBox(width: 60),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  child: MenuItem(
                    isHovering: _isHovering,
                    label: 'Workshops',
                    index: 2,
                  ),
                ),
              ],
            ),
            Text(
              '~ Benoit Poyser ~',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                //fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                //letterSpacing: 3,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 200),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  child: MenuItem(
                    isHovering: _isHovering,
                    label: 'LinkTree',
                    index: 3,
                  ),
                ),
                SizedBox(width: 100)
              ],
            ),
          ],
        ),
      ),
    );
    //);
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {Key key,
      @required List isHovering,
      @required String label,
      @required int index})
      : _isHovering = isHovering,
        _label = label,
        _index = index,
        super(key: key);

  final List _isHovering;
  final String _label;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _label,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 5),
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          visible: _isHovering[_index],
          child: Container(
            height: 2,
            width: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
