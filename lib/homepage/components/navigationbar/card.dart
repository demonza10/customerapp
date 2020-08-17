import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material MyItems(IconData icon, String haeading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(100.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "body",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  // Material(
                  //   color: Color(color),
                  //   borderRadius: BorderRadius.circular(10.0),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(16.0),
                  //     child: Icon(
                  //       icon,
                  //       color: Colors.white,
                  //       size: 30.0,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyItems(Icons.graphic_eq, "Total", 0xffed622b),
          MyItems(Icons.graphic_eq, "Total", 0xffed622b),
          MyItems(Icons.graphic_eq, "Total", 0xffed622b),
          MyItems(Icons.graphic_eq, "Total", 0xffed622b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 130.0),
        ],
      ),
    );
  }
}

// class MyItems {
//   final String title;
//   final String imageAssets;
//   const MyItems({this.title, this.imageAssets});
// }

// List<MyItems> mocksup = const <MyItems>[
//   const MyItems(title: 'สินค้า1', imageAssets: 'assets/img/product1.jpg'),
//   const MyItems(title: 'สินค้า2', imageAssets: 'assets/img/product2.jpg'),
//   const MyItems(title: 'สินค้า3', imageAssets: 'assets/img/product3.jpg'),
// ];
