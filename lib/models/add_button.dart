import 'package:flutter/material.dart';
import 'package:grocery_list_updated/models/hero_dialog_route.dart';

const String _heroAdd = 'add-button-hero';

class AddButton extends StatelessWidget {

  const AddButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HeroDialogRoute(
          builder: (context) {
            return const _AddPopupCard();
          },
        ));
      },
      child: Hero(
        tag: _heroAdd,
        child: Container(
          height: 56,
          width: 56,
          child: Material(
            color: Colors.green,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: const Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}

class _AddPopupCard extends StatelessWidget {

  const _AddPopupCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAdd,
          child: Material(
            color: Colors.grey[100],
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: const Text('Add a Custom Item', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                  ),
                  Divider(
                    color: Colors.grey.shade800,
                    thickness: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 12.0, right: 12.0),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 16
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter Item Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade600,
                    thickness: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, left: 12.0, right: 12.0),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 16
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Enter Item Description',
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade600,
                    thickness: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                            child: Text('Cancel', style: TextStyle(color: Colors.red, fontSize: 16))
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {}, 
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                            child: Text('Add', style: TextStyle(fontSize: 16),)
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}