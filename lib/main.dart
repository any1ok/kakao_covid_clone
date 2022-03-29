import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCovid19Page(title : "KAKAO COVID19 Demo"),
    );
  }
}

class MyCovid19Page extends StatefulWidget {
  const MyCovid19Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyCovid19PageState createState() => _MyCovid19PageState();
}

class _MyCovid19PageState extends State<MyCovid19Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title : Text(widget.title)
    ),
    );
  }
}

