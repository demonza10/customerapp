// import 'package:flutter/material.dart';

// class a extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Discount(
//             image_location: 'assets/img/3.jpg',
//           ),
//           Discount(
//             image_location: 'assets/img/3.jpg',
//           ),
//           Discount(
//             image_location: 'assets/img/3.jpg',
//           ),
//           Discount(
//             image_location: 'assets/img/3.jpg',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Discount extends StatelessWidget {
//   final String image_location;

//   Discount({this.image_location});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           width: 150.0,
//           child: ListTile(
//               title: Image.asset(
//                 image_location,
//                 width: 100.0,
//                 height: 100.0,
//               ),
//               subtitle: Container(
//                 alignment: Alignment.topCenter,
//               )),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("B"),
      ),
    );
  }
}
