import 'package:flutter/material.dart';
import '../../Shared/global.dart';
import '../Texts/list_items.dart';

class ListContainer extends StatelessWidget {
  final String listTitle;
  final List<String> itemsList;
  final double containerWidth;
  final double containerHeight;
  final double titleSize;
  final double listSize;

  const ListContainer({
    Key key,
    this.listTitle,
    this.itemsList,
    this.containerWidth = 380,
    this.containerHeight,
    this.titleSize = Global.title2FontSize,
    this.listSize = Global.subtitleFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = <Padding>[];
    itemsList.forEach((element) => items.add(Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: new ListItem(fontSize: listSize, itemText: element),
        )));

    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: Global.cardBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Text(
              listTitle,
              style: TextStyle(fontSize: titleSize),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                color: Global.accentColor,
                height: 3,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                width: containerWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: items,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
