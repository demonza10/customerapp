import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar1.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar2.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar3.dart';
import 'package:queueapp/homepage/homescreen.dart';
import 'package:queueapp/shoptest/API.dart';
import 'package:queueapp/shoptest/User.dart';

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
      home: MyListScreen(),
    );
  }
}

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:queueapp/shoptest/API.dart';
// import 'package:queueapp/shoptest/User.dart';

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var users = new List<User>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Map<String, dynamic> map = json.decode(response.body);
        Iterable shop = map["data"];
        users = shop.map((model) => User.fromJson(model)).toList();
        print(shop);
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
    print(users);
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User List"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(users[index].title));
          },
        ));
  }
}
