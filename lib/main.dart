import 'package:flutter/material.dart';
import 'package:landing_screens/FirstPage.dart';
import 'package:landing_screens/SecondPage.dart';
import 'package:landing_screens/ThirdPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final controller = PageController(initialPage: 0);
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        FirstPage(),
        SecondPage(),
        ThirdPage(),
      ],
    ));
  }
}
