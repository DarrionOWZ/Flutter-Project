import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Records> fetchInfo() async {
  final response = await http.get(Uri.https('data.gov.sg',
      'api/action/datastore_search?resource_id=139a3035-e624-4f56-b63f-89ae28d4ae4c&limit=5'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Records.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load information');
  }
}

class Price extends StatefulWidget {
  Price({Key key}) : super(key: key);

  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  Future<Records> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<Records>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.address);
          }
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // By default, show a loading spinner.
          return Center(child: Container(child: CircularProgressIndicator()));
        },
      ),
    );
  }
}

class Price2 extends StatelessWidget {
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

class GetCarParkInfo {
  String help;
  bool success;
  Result result;

  GetCarParkInfo({this.help, this.success, this.result});

  GetCarParkInfo.fromJson(Map<String, dynamic> json) {
    help = json['help'];
    success = json['success'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['help'] = this.help;
    data['success'] = this.success;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    return data;
  }
}

class Result {
  String resourceId;
  List<Fields> fields;
  List<Records> records;
  Links lLinks;
  int limit;
  int total;

  Result(
      {this.resourceId,
      this.fields,
      this.records,
      this.lLinks,
      this.limit,
      this.total});

  Result.fromJson(Map<String, dynamic> json) {
    resourceId = json['resource_id'];
    if (json['fields'] != null) {
      fields = new List<Fields>();
      json['fields'].forEach((v) {
        fields.add(new Fields.fromJson(v));
      });
    }
    if (json['records'] != null) {
      records = new List<Records>();
      json['records'].forEach((v) {
        records.add(new Records.fromJson(v));
      });
    }
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
    limit = json['limit'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resource_id'] = this.resourceId;
    if (this.fields != null) {
      data['fields'] = this.fields.map((v) => v.toJson()).toList();
    }
    if (this.records != null) {
      data['records'] = this.records.map((v) => v.toJson()).toList();
    }
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    data['limit'] = this.limit;
    data['total'] = this.total;
    return data;
  }
}

class Fields {
  String type;
  String id;

  Fields({this.type, this.id});

  Fields.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['id'] = this.id;
    return data;
  }
}

class Records {
  String shortTermParking;
  String carParkType;
  String yCoord;
  String xCoord;
  String freeParking;
  String gantryHeight;
  String carParkBasement;
  String nightParking;
  String address;
  String carParkDecks;
  int iId;
  String carParkNo;
  String typeOfParkingSystem;

  Records(
      {this.shortTermParking,
      this.carParkType,
      this.yCoord,
      this.xCoord,
      this.freeParking,
      this.gantryHeight,
      this.carParkBasement,
      this.nightParking,
      this.address,
      this.carParkDecks,
      this.iId,
      this.carParkNo,
      this.typeOfParkingSystem});

  Records.fromJson(Map<String, dynamic> json) {
    shortTermParking = json['short_term_parking'];
    carParkType = json['car_park_type'];
    yCoord = json['y_coord'];
    xCoord = json['x_coord'];
    freeParking = json['free_parking'];
    gantryHeight = json['gantry_height'];
    carParkBasement = json['car_park_basement'];
    nightParking = json['night_parking'];
    address = json['address'];
    carParkDecks = json['car_park_decks'];
    iId = json['_id'];
    carParkNo = json['car_park_no'];
    typeOfParkingSystem = json['type_of_parking_system'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['short_term_parking'] = this.shortTermParking;
    data['car_park_type'] = this.carParkType;
    data['y_coord'] = this.yCoord;
    data['x_coord'] = this.xCoord;
    data['free_parking'] = this.freeParking;
    data['gantry_height'] = this.gantryHeight;
    data['car_park_basement'] = this.carParkBasement;
    data['night_parking'] = this.nightParking;
    data['address'] = this.address;
    data['car_park_decks'] = this.carParkDecks;
    data['_id'] = this.iId;
    data['car_park_no'] = this.carParkNo;
    data['type_of_parking_system'] = this.typeOfParkingSystem;
    return data;
  }
}

class Links {
  String start;
  String next;

  Links({this.start, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['next'] = this.next;
    return data;
  }
}
