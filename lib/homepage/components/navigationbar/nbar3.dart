import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:queueapp/homepage/components/navigationbar/a.dart';
import 'package:queueapp/homepage/components/navigationbar/b.dart';
import 'package:queueapp/homepage/components/navigationbar/c.dart';
import 'package:queueapp/homepage/components/navigationbar/card.dart';
import 'package:queueapp/homepage/homescreen.dart';
// import '../widgets/CusTomAppBar.dart';
// import 'LandingPage.dart';
// import './searchScreen.dart';
// import './ProfilePage.dart';
// import 'favoritePage.dart';

class NBar3 extends StatefulWidget {
  @override
  _NBar3State createState() => _NBar3State();
}

class _NBar3State extends State<NBar3> with TickerProviderStateMixin {
  int currentPage = 0;
  Color primaryColor;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  Widget current_page(position) {
    if (position == 0) {
      return MyHomePage();
    }
    if (position == 1) {
      return Center(child: b());
    }
    if (position == 2) {
      return Dashboard();
    }
    if (position == 3) {
      return ItemDetails();
    }
  }

  @override
  Widget build(BuildContext context) {
    primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        textColor: Theme.of(context).hintColor,
        activeIconColor: Colors.white10,
        circleColor: primaryColor,
        inactiveIconColor: primaryColor,
        initialSelection: 0,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.favorite, title: "Favorite"),
          TabData(iconData: Icons.person, title: "Profile"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      body: current_page(currentPage),
      // appBar: CustomAppBar(),
    );
  }
}
