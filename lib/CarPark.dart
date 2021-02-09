import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onemapsg/onemapsg.dart';

class CarPark extends StatelessWidget {
  Position currentPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.network(
              'https://developers.onemap.sg/commonapi/staticmap/getStaticImage?layerchosen=default&lat=1.28666009534058&lng=103.837643678463&zoom=16&height=512&width=512&polygons=&lines=&points=&color=&fillColor='),
        ],
      ),
    );
  }
}
