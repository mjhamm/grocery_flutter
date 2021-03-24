import 'dart:async';
import 'package:flutter/material.dart';

class MakeItemRow extends StatefulWidget {

  final String itemName;

  const MakeItemRow({Key key, this.itemName }) : super(key: key);

  @override
  _MakeItemRowState createState() => _MakeItemRowState();
}

class _MakeItemRowState extends State<MakeItemRow> {

  bool _checked = false;

  void _tapRow() {
    setState(() {
      if (_checked) {
        _checked = false;
      } else {
        _checked = true;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _tapRow();
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300)
        ),
        child: Row(
          children: [
            Checkbox(
              onChanged: (bool value) {
              },
              value: _checked,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  widget.itemName,
                  style: TextStyle(
                    fontSize: 14
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}