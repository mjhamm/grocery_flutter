import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_list_updated/help/help_item.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController(initialPage: 0);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          body: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              HelpItem(title: 'Adding items to your list', descr: 'Click on items to add them to your list', image: 'images/image_1.png',),
              HelpItem(title: 'Need to Add a Custom Item?', descr: 'Click on the plus', image: 'images/image_2.png'),
              HelpItem(title: 'View your list', descr: 'Swipe to the left to check your list', image: 'images/image_3.png'),
              HelpItem(title: 'You got something on your list?', descr: 'Click on it to check it off', image: 'images/image_5.png'),
              HelpItem(title: 'Starting on your next list?', descr: 'Press Clear All Items', image: 'images/image_6.png'),
            ],
          )
        ),
      ),
    );
  }
}