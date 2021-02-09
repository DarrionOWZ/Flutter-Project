import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:geolocator/geolocator.dart';

class CarPark extends StatelessWidget {
  Position CurrentPosition;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.network(
              'https://developers.onemap.sg/commonapi/staticmap/getStaticImage?layerchosen=default&lat=${CurrentPosition.latitude}&lng=${CurrentPosition.longitude}&zoom=16&height=512&width=512&polygons=&lines=&points=&color=&fillColor='),
        ],
      ),
    );
  }
}
