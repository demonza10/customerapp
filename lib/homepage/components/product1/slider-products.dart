import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/navigationbar/c.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          mocksup.length,
          (index) => Container(
            // height: 200,
            width: 125.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Bottombarhome3(dish: mocksup[index])),
                );
                print(mocksup[index].title);
              },
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Image.asset(
                      mocksup[index].imageAssets,
                      cacheHeight: 130,
                      cacheWidth: 170,
                      // fit: BoxFit.cover,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0, left: 2.0),
                          child: Container(
                            child: Text(
                              mocksup[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Container(
                                child: Text(
                                  "ราคา",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 3.0, left: 5.0),
                              child: Container(
                                child: Text(
                                  mocksup[index].price,
                                  style: TextStyle(
                                    // color: Colors.white,
                                    color: Colors.orange[900],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Mocksup {
  final String title;
  final String price;
  final String discount;
  final String imageAssets;
  const Mocksup({this.title, this.price, this.discount, this.imageAssets});
}

List<Mocksup> mocksup = const <Mocksup>[
  const Mocksup(
      title: 'NIKE',
      price: '฿7900',
      discount: 'ลด 50%',
      imageAssets: 'assets/img/product7.jpg'),
  const Mocksup(
      title: 'สินค้า2',
      price: '฿1500',
      discount: 'ลด 30%',
      imageAssets: 'assets/img/product8.jpg'),
  const Mocksup(
      title: 'สินค้า3',
      price: '฿590',
      discount: 'ลด 70%',
      imageAssets: 'assets/img/product6.jpg'),
];

// import 'package:flutter/material.dart';

// class NewProduct extends StatelessWidget {
//   Container MyArticles(String imgVal, String heading, String subheading) {
//     return Container(
//       width: 150.0,
//       child: GestureDetector(
//         onTap: () {
//           print("$imgVal");
//         },
//         child: Card(
//           child: Wrap(
//             children: <Widget>[
//               Center(
//                 child: Image.asset(
//                   imgVal,
//                   height: 100.0,
//                   // width: 100.0,
//                   // fit: BoxFit.contain,
//                 ),
//               ),
//               ListTile(
//                 title: Text(
//                   heading,
//                   // style: TextStyle(color: Colors.yellow),
//                 ),
//                 subtitle: Text(
//                   subheading,
//                   style: TextStyle(color: Colors.yellow[700]),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       margin: EdgeInsets.only(top: 3.0, bottom: 35),
//       height: 200.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           MyArticles("assets/img/product7.jpg", "Nike", "7900 Bath"),
//           MyArticles("assets/img/product8.jpg", "Butiful BB", "1500 Bath"),
//           MyArticles("assets/img/product5.jpg", "BB Water Love", "2000 Bath"),
//         ],
//       ),
//     ));
//   }
// }
