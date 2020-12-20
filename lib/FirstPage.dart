import 'package:flutter/material.dart';
import 'package:landing_screens/HomePage.dart';
import 'package:landing_screens/SecondPage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        color: Colors.orange[50],
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Image.asset(
                      'assets/secondpage.png',
                      fit: BoxFit.cover,
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment(-0.3, 0),
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Master Study is The\n',
                            style: TextStyle(
                                color: Colors.blueGrey[800], fontSize: 26)),
                        TextSpan(
                            text: 'Best Choice for\neveryone',
                            style: TextStyle(
                                color: Colors.blueGrey[800],
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(5))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5))),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01),
                        Container(
                            width: MediaQuery.of(context).size.width / 6,
                            height: MediaQuery.of(context).size.height * 0.01,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5))),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment(0.9, 0.85),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomePage()));
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
