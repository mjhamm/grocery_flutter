import 'package:flutter/material.dart';
import 'package:grocery_list_updated/make_list/make_item_row.dart';

class MakeItemGroup extends StatelessWidget {

  final String groupName;
  final List<String> items;
  //List<Widget> children = new List<Widget>();

  MakeItemGroup({Key key, this.groupName, this.items}) : super(key: key);

  List<Widget> setupItems(List<String> items) {
    List<Widget> children = [];

    for (var i = 0; i < items.length; i++) {
      children.add(MakeItemRow(itemName: items[i],));
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      maintainState: true,
      title: Text(groupName),
      children: setupItems(items),
    );
  }
}