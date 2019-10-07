import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sounds_of_earth/url.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  List sounds;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Sounds of Earth"),
      ),
      body: Container(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/sounds/sounds.json"),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              sounds = jsonDecode(snapshot.data.toString());
              return ListView.builder(
                itemCount: sounds.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      title: new Text(sounds[index]["name"].toString()),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlaySounds(
                                     url: sounds[index]["url"].toString(),
                                    ))); 
                      },
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: new CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
