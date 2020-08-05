// import 'package:flutter/material.dart';

// class SlidePromotionProduct extends StatelessWidget {
//   const SlidePromotionProduct({
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
//             // decoration: BoxDecoration(boxShadow: [
//             //   BoxShadow(
//             //       color: Color.fromRGBO(0, 0, 0, 0.1),
//             //       offset: Offset(6, 2),
//             //       spreadRadius: 3.0),
//             // ]),
//             margin: EdgeInsets.all(2.0),
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
//   const Mocksup(title: 'สินค้า1', imageAssets: 'assets/img/product1.jpg'),
//   const Mocksup(title: 'สินค้า2', imageAssets: 'assets/img/product2.jpg'),
//   const Mocksup(title: 'สินค้า3', imageAssets: 'assets/img/product3.jpg'),
// ];

import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  Container MyArticles(String imgVal, String heading, String subheading) {
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
            ListTile(
              title: Text(
                heading,
                // style: TextStyle(color: Colors.yellow),
              ),
              subtitle: Text(
                subheading,
                style: TextStyle(color: Colors.yellow[700]),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 3.0, bottom: 35),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles("assets/img/product7.jpg", "Nike", "7900 Bath"),
          MyArticles("assets/img/product8.jpg", "Butiful BB", "1500 Bath"),
          MyArticles("assets/img/product5.jpg", "BB Water Love", "2000 Bath"),
        ],
      ),
    ));
  }
}
