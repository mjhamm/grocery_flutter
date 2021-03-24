import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationDrawer extends StatelessWidget {

  final Function onIndexChanged;
  final int _currentIndex;

  CustomNavigationDrawer(this.onIndexChanged, this._currentIndex);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.grey[100]
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(child: Image.asset('assets/images/total_3x.png')),
            )
          ),
          ListTile(
            selected: _currentIndex == 0,
            selectedTileColor: Colors.green[400],
            leading: Icon(CupertinoIcons.pen, color: _currentIndex == 0 ? Colors.white : Colors.grey,),
            title: Text('Make List', style: TextStyle(color: _currentIndex == 0 ? Colors.white : Colors.black),),
            onTap: () {
              onIndexChanged(0);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            selected: _currentIndex == 1,
            selectedTileColor: Colors.green[400],
            leading: Icon(CupertinoIcons.square_list, color: _currentIndex == 1 ? Colors.white : Colors.grey,),
            title: Text('View List', style: TextStyle(color: _currentIndex == 1 ? Colors.white : Colors.black),),
            onTap: () {
              onIndexChanged(1);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            selected: _currentIndex == 2,
            selectedTileColor: Colors.green[400],
            leading: Icon(CupertinoIcons.question, color: _currentIndex == 2 ? Colors.white : Colors.grey,),
            title: Text('Help', style: TextStyle(color: _currentIndex == 2 ? Colors.white : Colors.black),),
            onTap: () {
              onIndexChanged(2);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
          ),
          ListTile(
            selected: _currentIndex == 3,
            selectedTileColor: Colors.green[400],
            leading: Icon(CupertinoIcons.info_circle, color: _currentIndex == 3 ? Colors.white : Colors.grey,),
            title: Text('About Us', style: TextStyle(color: _currentIndex == 3 ? Colors.white : Colors.black),),
            onTap: () {
              onIndexChanged(3);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}