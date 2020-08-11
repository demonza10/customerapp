import 'package:flutter/material.dart';

// class a extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       body: Center(
//         child: Text("B"),
//       ),
//     );
//   }
// }

class ItemDetails extends StatelessWidget {
  final Map<String, dynamic> dish;

  ItemDetails({this.dish});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutStarts(
        dish: dish,
      ),
    );
  }
}

class LayoutStarts extends StatelessWidget {
  final Map<String, dynamic> dish;

  LayoutStarts({this.dish});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // CarDetailsAnimation(dish: dish),
        // CustomBottomSheet(context: context, dish: dish),
        // RentButton(),
      ],
    );
  }
}
