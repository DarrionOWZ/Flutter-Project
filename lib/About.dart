import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: <Widget>[
          Text(
            'About Us',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
              'We aim to make the lives of drivers more convenient for them to find parking space and everything else inbetween.',
              style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }
}
