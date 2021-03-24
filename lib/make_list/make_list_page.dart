import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_list_updated/action%20sheets/bottom_sheet_add.dart';
import 'package:grocery_list_updated/make_list/make_item_group.dart';
import 'package:grocery_list_updated/models/add_button.dart';

class MakeListPage extends StatefulWidget {

  @override
  _MakeListPageState createState() => _MakeListPageState();
}

class _MakeListPageState extends State<MakeListPage> with AutomaticKeepAliveClientMixin {

  // Bottom sheet for Add Item
  Future<void> showAddSheet() async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return BottomSheetAdd();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          MakeItemGroup(
            groupName: 'Baby & Childcare',
            items: [
              'Baby Food','Diapers','Formula', 'Wipes'
            ],
          ),
          MakeItemGroup(
            groupName: 'Baking',
            items: [
              'Baking Powder','Baking Soda','Brown Sugar', 'Flour', 'Pancake Mix', 'Sugar', 'Syrup', 'Vanilla', 'Yeast'
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}