// import 'package:flutter/material.dart';

// class SlideHotNewStoresPage extends StatelessWidget {
//   const SlideHotNewStoresPage({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 1,
//       crossAxisSpacing: 2,
//       mainAxisSpacing: 2,
//       scrollDirection: Axis.horizontal,
//       children: List.generate(
//         mocksup.length,
//         (index) => Center(
//           child: Container(
//             margin: EdgeInsets.all(1.0),
//             child: GridTile(
//               footer: Center(
//                 child: Text(
//                   mocksup[index].title,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 5.0, bottom: 15.0),
//                 child: Image.asset(
//                   mocksup[index].imageAssets,
//                   cacheHeight: 200,
//                   cacheWidth: 250,
//                   // fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Mocksup {
//   final String title;
//   final String imageAssets;
//   const Mocksup({this.title, this.imageAssets});
// }

// List<Mocksup> mocksup = const <Mocksup>[
//   const Mocksup(title: 'ร้านค้า1', imageAssets: 'assets/img/promotion1.jpg'),
//   const Mocksup(title: 'ร้านค้า2', imageAssets: 'assets/img/promotion2.jpg'),
//   const Mocksup(title: 'ร้านค้า3', imageAssets: 'assets/img/promotion3.jpg'),
//   const Mocksup(title: 'ร้านค้า4', imageAssets: 'assets/img/promotion1.jpg'),
//   const Mocksup(title: 'ร้านค้า5', imageAssets: 'assets/img/promotion2.jpg'),
// ];

import 'package:flutter/material.dart';

class HotProduct extends StatelessWidget {
  Container MyArticles(
    String imgVal,
    String heading,
  ) {
    return Container(
      width: 150.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Center(
              child: Image.asset(
                imgVal,
                height: 100.0,
                // width: 100.0,
                // fit: BoxFit.contain,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,
                  margin: const EdgeInsets.only(
                      top: 10.0, bottom: 2.0, right: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "5",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(heading),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(bottom: 30.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles(
            "assets/img/store7.jpg",
            "นาย ก. บาร์",
          ),
          MyArticles("assets/img/store6.jpg", "ร้านกาแฟนายก"),
          MyArticles("assets/img/store8.jpg", "ทิ้งโค้งรีสอร์ท"),
        ],
      ),
    ));
  }
}
