import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/navigationbar/a.dart';
import 'package:queueapp/homepage/components/navigationbar/b.dart';
import 'package:queueapp/homepage/components/navigationbar/c.dart';
import 'package:queueapp/homepage/components/navigationbar/card.dart';
import 'package:queueapp/homepage/components/navigationbar/d.dart';
import 'package:queueapp/homepage/homescreen.dart';

// import 'package:queueapp/homepage/search/search.dart';

class BotttomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BotttomNavBar> {
  var _page = 0;
  final pages = [MyHomePage(), ItemDetails(), Dashboard(), d()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          color: Colors.yellow, //สีแทบ
          height: 50,
          buttonBackgroundColor: Colors.yellow, //สีไอคอน
          backgroundColor: Colors.white, //สีหยดน้ำ
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.people),
            Icon(Icons.games),
          ]),
      body: pages[_page],
    );
  }
}
