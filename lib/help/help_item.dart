import 'package:flutter/material.dart';

class HelpItem extends StatelessWidget {

  final String title;
  final String descr;
  final String image;

  const HelpItem({Key key, this.title, this.descr, this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: 
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: 
            Text(
              descr,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                color: Colors.blue,
                child: Image.asset(image)
              ),
            ),
          ),
        ],
      ),
    );
  }
}