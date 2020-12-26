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
  Color color1 = Colors.orange[300];
  Color color2 = Colors.white;
  Color color3 = Colors.white;
  final controller = PageController(initialPage: 0, keepPage: true);
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: PageView(
                onPageChanged: (value) {
                  if (value == 0) {
                    setState(() {
                      color1 = Colors.orange[300];
                      color2 = Colors.white;
                      color3 = Colors.white;
                    });
                  }
                  ;
                  if (value == 1) {
                    setState(() {
                      color1 = Colors.white;
                      color2 = Colors.orange[300];
                      color3 = Colors.white;
                    });
                  }
                  ;
                  if (value == 2) {
                    setState(() {
                      color1 = Colors.white;
                      color2 = Colors.white;
                      color3 = Colors.orange[300];
                    });
                  }
                },
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Hero(
                        tag: 'animated',
                        child: Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.height * 0.01,
                            decoration: BoxDecoration(
                                color: color1,
                                borderRadius: BorderRadius.circular(5))),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Container(
                          width: MediaQuery.of(context).size.width / 6,
                          height: MediaQuery.of(context).size.height * 0.01,
                          decoration: BoxDecoration(
                              color: color2,
                              borderRadius: BorderRadius.circular(5))),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                      Container(
                          width: MediaQuery.of(context).size.width / 6,
                          height: MediaQuery.of(context).size.height * 0.01,
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(5))),
                    ],
                  ),
                )),
          ],
        ));
  }
}
