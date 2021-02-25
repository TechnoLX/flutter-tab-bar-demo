import 'package:NewApp/tab_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //primarySwatch: color,
      ),
      home: TabBarController(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
