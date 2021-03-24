import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetAdd extends StatefulWidget {
  @override
  _BottomSheetAddState createState() => _BottomSheetAddState();
}

class _BottomSheetAddState extends State<BottomSheetAdd> {
  @override
  Widget build(BuildContext context) {

    TextEditingController itemNameController = new TextEditingController();
    TextEditingController itemDescrController = new TextEditingController();

    Widget _checkAddStatus(String text) {
      if (text.isEmpty) {
        return TextButton(onPressed: null, child: Text('Add Item', style: TextStyle(color: Colors.grey.shade600, fontSize: 16),));
      } else {
        return TextButton(onPressed: () {}, child: Text('Add Item', style: TextStyle(color: Colors.green),),);
      }
    }

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: CupertinoActionSheet(
        title: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  width: 40,
                  height: 5,
                ),
              ),
              Text(
                'Add a Custom Item',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
            ],
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
            child: TextField(
              controller: itemNameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Item Name'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: TextField(
              controller: itemDescrController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Item Description'
              ),
            ),
          ),
          TextButton(onPressed: null, child: Text('Add Item', style: TextStyle(color: Colors.grey.shade600, fontSize: 16),))
        ],
        cancelButton: TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(
              color: Colors.red
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}