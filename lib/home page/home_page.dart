import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_list_updated/about/about_page.dart';
import 'package:grocery_list_updated/help/help_page.dart';
import 'package:grocery_list_updated/make_list/make_list_page.dart';
import 'package:grocery_list_updated/models/custom_drawer.dart';
import 'package:grocery_list_updated/view_list/view_list_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  var makePage = new MakeListPage();
  var viewPage = new ViewListPage();

  String changeMainText(int _currentIndex) {
    switch(_currentIndex) {
      case 0:
        return 'Make List';
        break;
      case 1:
        return 'View List';
        break;
      case 2:
        return 'Help';
        break;
      case 3:
        return 'About Us';
        break;
      default:
        return 'Make List';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          drawer: CustomNavigationDrawer((int index) {
            setState(() {
              _selectedIndex = index;
            });
          }, _selectedIndex),
          appBar: AppBar(
            centerTitle: true,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(changeMainText(_selectedIndex), style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,
            actions: [
              _selectedIndex == 1 ? Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(icon: Icon(Icons.refresh, color: Colors.grey,), onPressed: () {},),
              ) : Container(),
            ] 
          ),
          body: Builder(
            builder: (context) {
              switch(_selectedIndex) {
                case 0:
                  return makePage;
                  //return MakeListPage();
                  break;
                case 1:
                  return viewPage;
                  //return ViewListPage();
                  break;
                case 2:
                  return HelpPage();
                  break;
                case 3:
                  return AboutPage();
                  break;
                default:
                  return MakeListPage();
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
