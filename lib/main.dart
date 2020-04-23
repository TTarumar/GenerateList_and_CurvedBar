import 'package:deneme2/add.dart';
import 'package:deneme2/clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "Lists.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyApp> {
  int _curindex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabs=[
      Center(child: Listeler(),),
      Center(child: addApp(),),
      Center(child: clockPage(),)
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabs[_curindex],
        backgroundColor: Colors.amber.shade400,
        bottomNavigationBar: CurvedNavigationBar(
          index: _curindex,
          height: 55,
          animationCurve: Curves.decelerate,
          animationDuration: Duration(milliseconds: 700),
          backgroundColor: Colors.amber.shade400,
          items: <Widget>[
            Icon(
              Icons.person,
              color: Colors.deepPurple.shade400,
            ),
            Icon(
              Icons.add,
              color: Colors.deepPurple.shade400,
            ),
            Icon(
              Icons.access_time,
              color: Colors.deepPurple.shade400,
            ),
          ],
          onTap: (index){
            setState(() {
              _curindex=index;
            });
          },
        ),
      ),
    );
  }
}
