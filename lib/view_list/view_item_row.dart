import 'package:flutter/material.dart';
import 'package:grocery_list_updated/action%20sheets/bottom_sheet_info.dart';
import 'package:grocery_list_updated/view_list/view_item.dart';

class ViewItemRow extends StatefulWidget {

  final ViewItem viewItem;

  const ViewItemRow({Key key, this.viewItem}) : super(key: key);

  @override
  _ViewItemRowState createState() => _ViewItemRowState();
}

class _ViewItemRowState extends State<ViewItemRow> {

  void tapRow() {
    setState(() {
      if (widget.viewItem.striked) {
        widget.viewItem.striked = false;
      } else {
        widget.viewItem.striked = true;
      }
    });
  }

  // Bottom sheet for Add Item
  Future<void> showInfoSheet() async {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return BottomSheetInfo(itemName: widget.viewItem.itemName,);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {tapRow();},
      trailing: IconButton(
        icon: Icon(Icons.info_outline, color: Theme.of(context).primaryColor,),
        onPressed: () {
          setState(() {
            showInfoSheet();
          });
        },),
      title: Text(
        widget.viewItem.itemName,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18,
          decorationThickness: 3,
          decoration: widget.viewItem.striked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
      subtitle: Text(
        widget.viewItem.itemDescription,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          decorationThickness: 3,
          decoration: widget.viewItem.striked ? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),
    );
  }
}