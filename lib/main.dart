import 'package:flutter/material.dart';
import 'package:project/About.dart';
import 'package:project/CarPark.dart';
import 'package:project/Price.dart';
import 'package:project/Profile.dart';

import 'CashCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Login());
  }
}

class LoginData {
  final String username;
  final String password;

  LoginData(this.username, this.password);
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Login Page',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      contentPadding: const EdgeInsets.all(10.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      contentPadding: const EdgeInsets.all(10.0)),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          child: Text('Register'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
                            );
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          child: Text('Submit'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            );
                          },
                        )),
                  ])
            ],
          )),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('SGparking'),
          ),
          bottomNavigationBar: Material(
            color: Colors.blue,
            child: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.orange[300],
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.trending_up,
                  // color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.directions_car,
                  // color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.credit_card,
                  // color: Colors.greenAccent,
                )),
                Tab(
                    icon: Icon(
                  Icons.info,
                )),
                Tab(
                    icon: Icon(
                  Icons.account_circle,
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Icon(Icons.directions_car),
              // Icon(Icons.directions_transit),
              // Icon(Icons.directions_bike),

              Price(),
              CarPark(),

              CashCard(),
              About(),
              Profile(),
            ],
          ),
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Register Page',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        contentPadding: const EdgeInsets.all(10.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        contentPadding: const EdgeInsets.all(10.0)),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        contentPadding: const EdgeInsets.all(10.0)),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(12.5),
                          child: RaisedButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                      Padding(
                          padding: const EdgeInsets.all(12.5),
                          child: RaisedButton(
                            child: Text('Submit'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )),
                    ])
              ],
            )),
          ),
        ),
      ),
    );
  }
}
