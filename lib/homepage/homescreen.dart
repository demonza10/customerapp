import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/navigationbar/a.dart';
import 'package:queueapp/homepage/components/navigationbar/b.dart';
import 'package:queueapp/homepage/components/navigationbar/nbar1.dart';
import 'package:queueapp/homepage/components/navigationbar/c.dart';
import 'package:queueapp/homepage/components/navigationbar/d.dart';
import 'package:queueapp/homepage/components/nearshop/storesnearme-page.dart';
import 'package:queueapp/homepage/components/product1/promotion-products.dart';
import 'package:queueapp/homepage/components/promotion_page/top/ads-page.dart';
import 'package:queueapp/homepage/components/service_bar/category.dart';
import 'package:queueapp/homepage/components/coupon_bar/coupong-page.dart';
import 'package:queueapp/homepage/components/news/hotnewstores.dart';
import 'package:queueapp/homepage/components/promotion_page/promotion-content-page.dart';

import 'package:queueapp/homepage/components/store_layout/topshop-page.dart';

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primaryColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          AdsImageBarPage(),
          SizedBox(
            height: 10,
          ),
          Column(
            children: <Widget>[
              Container(
                height: 200,
                color: Colors.white,
                child: CategoryPage(),
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 130.0),
                        child: Text(
                          "ส่วนลด(ร้านที่ร่วมรายการ)",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CouPongPage(),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 180.0),
                        child: Text(
                          "แนะนำร้านและสินค้า",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PromotionContentPage(),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 250.0),
                        child: Text(
                          "สินค้าแนะนำ",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ProductPage(),
              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 250.0),
                        child: Text(
                          "ร้านที่ใกล้ฉัน",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StoresnearmePage(),
              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0),
                        child: Text(
                          "ร้านใหม่มาแรง",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TopShopPage(),
              PromotionContentPage(),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 250.0),
                        child: Text(
                          "ร้านยอดนิยม",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HotNewStoresPage(),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: 0,
      //     type: BottomNavigationBarType.fixed,
      //     // iconSize: 30.0,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           title: Text('home'),
      //           backgroundColor: Colors.blue),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.people),
      //           title: Text('people'),
      //           backgroundColor: Colors.red),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.dashboard),
      //           title: Text('dashboard'),
      //           backgroundColor: Colors.yellow),
      //     ],
      //     onTap: (index) {
      //       setState(() {
      //         _page = index;
      //       });
      //     }),
    );
  }
}
