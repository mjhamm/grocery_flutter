import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(color: Colors.black,),
            backgroundColor: Colors.white,
            title: Text('Feedback', style: TextStyle(color: Colors.black),),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                children: [
                  Text(
                    'We want you to love our product! That\'s why we want you to let us know of anything that can be improved.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      'If you have a new idea to make your life easier while using our app, let us know! We also hate to see something that may be making your' +
                      ' life more difficult. This is why if you let us know any bugs or problems, we begin to work on them right away!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text(
                      'Please email us with any improvements, bugs or just to tell us that you love the app! We would love to hear from you!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      log('Tap Email');
                    },
                    child: Text(
                      '2GetCustomerService@gmail.com',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        decoration: TextDecoration.underline
                      ),
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