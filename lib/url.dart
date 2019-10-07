import 'package:flutter/material.dart';

class PlaySounds extends StatefulWidget {
  final String url;
  PlaySounds({Key key, @required this.url}) : super(key: key);

  _PlaySoundsState createState() => _PlaySoundsState();
}

class _PlaySoundsState extends State<PlaySounds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: _launchURL,
          child: Text('Listen'),
        ),
      ),
    );
  }

  _launchURL() async {
    String url = widget.url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
