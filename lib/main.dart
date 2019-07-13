import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: RaisedButton(onPressed: _launchURL, child: Text('Show flutter homepage'),),
        ),
      ),
    );
  }

  void _launchURL() async {
    const url = 'https://www.baidu.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Cound not launch $url';
    }
  }
}
