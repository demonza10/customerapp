// import 'package:flutter/material.dart';

// class c extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Center(
//         child: Text("C"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/nearshop/slider-storesnearme-shop.dart';
// import 'package:testtab/component/storenearby/slidestorenearby.dart';
// import 'package:testtab/stack/ads.dart';

class Bottombarhome3 extends StatefulWidget {
  final Mocksup dish;
  Bottombarhome3({this.dish});

  @override
  _Bottombarhome3State createState() => _Bottombarhome3State();
}

class _Bottombarhome3State extends State<Bottombarhome3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // Ad(),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              child: Text(widget.dish.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            width: 50.0,
            height: 46.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          )
        ],
      ),
    );
  }
}
