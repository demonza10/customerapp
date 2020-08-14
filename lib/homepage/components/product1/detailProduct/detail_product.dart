import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/product1/detailProduct/slide_detail.dart';
import 'package:queueapp/homepage/components/product1/slider-products.dart';
import 'package:queueapp/homepage/homescreen.dart';
// import 'package:testtab/component/storenearby/slidestorenearby.dart';
// import 'package:testtab/stack/ads.dart';

class DetailProduct extends StatefulWidget {
  final Mocksup product;
  DetailProduct({this.product});

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView(
        children: <Widget>[
          SlideDetailP(),
          Padding(
            padding: EdgeInsets.all(15),
            // child: GestureDetector(
            //   onTap: () {
            //     Navigator(MyHomePage());
            //   },
            child: Container(
              child: Text(widget.product.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            // ),
          ),
          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              // border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),

            // child: Image.asset(
            //   widget.product.imageAssets,
            //   fit: BoxFit.cover,
            // ),
          )
        ],
      ),
    );
  }
}
