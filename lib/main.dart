import 'dart:io';
import 'dart:async';
import 'package:demo/help_screen.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(demo());
}

/*const String url1 = 'http://flutter.dev';
void launchURL() async {
  if (!await launch(url1)) throw 'could not launch $url1';
}*/

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Helpscreen()));
        },
        child: Text('push'),
      ),
    ));
  }
}
