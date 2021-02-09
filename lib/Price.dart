import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Prices',
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    top: BorderSide(width: 2.0, color: Colors.black))),
            child: Column(
              children: [
                Text('BLK 11/12/13 YORK HILL CAR PARK',
                    style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text('Short Term Parking',
                        style: TextStyle(fontSize: 20.0)),
                    SizedBox(
                      width: 45,
                    ),
                    Text('WHOLE DAY', style: TextStyle(fontSize: 20.0))
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text('Free Parking', style: TextStyle(fontSize: 20.0)),
                    SizedBox(
                      width: 75.0,
                    ),
                    Column(
                      children: [
                        Text('SUN & PH FR', style: TextStyle(fontSize: 20.0)),
                        Text(
                          ' 7AM-10.30PM',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    top: BorderSide(width: 2.0, color: Colors.black))),
            child: Column(
              children: [
                Text('BLK 747/752 YISHUN STREET 72',
                    style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text('Short Term Parking',
                        style: TextStyle(fontSize: 20.0)),
                    SizedBox(
                      width: 45,
                    ),
                    Text('WHOLE DAY', style: TextStyle(fontSize: 20.0))
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Text('Free Parking', style: TextStyle(fontSize: 20.0)),
                    SizedBox(
                      width: 75.0,
                    ),
                    Column(
                      children: [
                        Text('SUN & PH FR', style: TextStyle(fontSize: 20.0)),
                        Text(
                          ' 7AM-10.30PM',
                          style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
