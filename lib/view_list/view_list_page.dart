import 'package:flutter/material.dart';
import 'package:grocery_list_updated/models/add_button.dart';
import 'package:grocery_list_updated/view_list/view_item_row.dart';

class ViewListPage extends StatefulWidget {

  @override
  _ViewListPageState createState() => _ViewListPageState();
}

class _ViewListPageState extends State<ViewListPage> with AutomaticKeepAliveClientMixin {

  // List of View Item rows
  List<ViewItemRow> viewItems = [];

  // void addItem(Object data) async {
  //   viewItems.add(ViewItemRow(viewItem: ViewItem('$data', 'itemDescription', false)));
  //   print(viewItems.length);
  //   print(isFABVisible());
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Colors.grey.shade300,
              height: 1,
            ),
            itemCount: viewItems.length,
            key: UniqueKey(),
            itemBuilder: (context, index) {
              return viewItems[index];
            },
          ),
          Positioned(
            right: 24.0,
            bottom: 24.0,
            child: AddButton()
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}