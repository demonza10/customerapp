import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar1.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar2.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar3.dart';
import 'package:queueapp/homepage/homescreen.dart';

// import 'package:queueapp/homepage/promotion_page/slide-promotion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: BotttomNavBar(),
    );
  }
}
