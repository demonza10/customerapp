import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/navigationbar/b.dart';
import 'package:queueapp/homepage/components/navigationbar/c.dart';
import 'package:queueapp/homepage/components/navigationbar/d.dart';
import 'package:queueapp/homepage/components/product1/detailProduct/detail_product.dart';
import 'package:queueapp/homepage/homescreen.dart';
// import 'package:queueapp/homepage/search/search.dart';

class BasicBar extends StatefulWidget {
  @override
  _BasicBarState createState() => _BasicBarState();
}

class _BasicBarState extends State<BasicBar> {
  int _currentIndex = 0;
  var _page = 0;
  final pages = [MyHomePage(), DetailProduct(), d()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // index: 0,
        // color: Colors.yellow, //สีแทบ
        // height: 50,
        // buttonBackgroundColor: Colors.yellow, //สีไอคอน
        // backgroundColor: Colors.white, //สีหยดน้ำ
        // animationCurve: Curves.easeInOut,
        // animationDuration: Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
              backgroundColor: Colors.blue),
        ],
      ),
      body: pages[_page],
    );
  }
}
