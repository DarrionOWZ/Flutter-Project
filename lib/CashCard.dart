import 'package:flutter/material.dart';

class CashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: <Widget>[
          Text(
            'Cash Card Balance',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 25.0,
          ),
          Text('\$50.25', style: TextStyle(fontSize: 30.0)),
          SizedBox(
            height: 55.0,
          ),
          Text('History', style: TextStyle(fontSize: 25.0)),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    top: BorderSide(width: 2.0, color: Colors.black))),
            child: Row(
              children: [
                Text('2h 45mins', style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  width: 180.0,
                ),
                Text('-\$0.50',
                    style: TextStyle(fontSize: 20.0, color: Colors.red))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    top: BorderSide(width: 2.0, color: Colors.black))),
            child: Row(
              children: [
                Text('1h 20mins', style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  width: 180.0,
                ),
                Text('-\$0.25',
                    style: TextStyle(fontSize: 20.0, color: Colors.red))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15.0, 0, 15.0),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 2.0, color: Colors.black),
                    top: BorderSide(width: 2.0, color: Colors.black))),
            child: Row(
              children: [
                Text('1h 00mins', style: TextStyle(fontSize: 20.0)),
                SizedBox(
                  width: 180.0,
                ),
                Text('-\$0.15',
                    style: TextStyle(fontSize: 20.0, color: Colors.red))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
