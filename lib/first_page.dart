import 'dart:async';

import 'package:flutter/material.dart';
 

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/homepage');
  }
@override
  void initState() {
startTime();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
              child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/voyager-record-cover.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  
            children: <Widget>[
                Center(child:Text("Sounds of Earth",style: TextStyle(fontSize: 50.0,color: Colors.white),)),
            ],
          ),
        ),
      ),
    );
  }
}
