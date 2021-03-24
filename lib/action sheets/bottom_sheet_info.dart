import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetInfo extends StatelessWidget {

  final String itemName;

  const BottomSheetInfo({Key key, this.itemName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                itemName,
                textAlign: TextAlign.center,
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
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Item Description'
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Update Item Description',
              style: TextStyle(
                color: Colors.green
              ),
            ),
          )
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