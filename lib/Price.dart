import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Price',
          ),
          Icon(Icons.directions_car),
        ],
      ),
    );
  }
}
