import 'package:flutter/material.dart';
import 'package:temp_humi/home_page.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TempHumi',
      home: HomePageWidget(),
    );
  }
}
