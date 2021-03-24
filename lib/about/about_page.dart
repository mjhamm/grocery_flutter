import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_list_updated/feedback/feedback_page.dart';
import 'package:grocery_list_updated/help/help_page.dart';
import 'package:grocery_list_updated/transitions/slide_right_transition.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   leading: BackButton(color: Colors.black,),
          //   backgroundColor: Colors.white,
          //   title: Text('About Us', style: TextStyle(color: Colors.black),),
          //   centerTitle: true,
          // ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: Image.asset('assets/images/total_3x.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Text(
                      'Here at 2Get, we are helping to create an easy way to keep track of the most common items that you might need throughout the week.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Text(
                      'Whether you are going to the store to just pick up some milk, or need to make a list of your entire food shopping before you leave the house, 2Get is here to help you prepare.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  MaterialButton(
                    height: 35,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    minWidth: double.infinity,
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.push(context, SlideRightRoute(page: FeedbackPage()));
                    },
                    child: Text(
                      'Feedback',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Legal',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 35,
                    minWidth: double.infinity,
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 35,
                    minWidth: double.infinity,
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 35,
                    minWidth: double.infinity,
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text(
                      'End User License Agreement',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 35,
                    minWidth: double.infinity,
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    child: Text(
                      'Open Source Libraries',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Version: 1.0.0'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}