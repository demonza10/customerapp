import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/detail_review/review_shop.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/mix_slide.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/slid_nearshop.dart';
import 'package:queueapp/homepage/components/nearshop/slider-storesnearme-shop.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:testtab/component/storenearby/slidestorenearby.dart';
// import 'package:testtab/stack/ads.dart';

class DetailNear extends StatefulWidget {
  final Mocksup near;
  DetailNear({this.near});

  @override
  _DetailNearState createState() => _DetailNearState();
}

class _DetailNearState extends State<DetailNear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MixPage(),
          Row(
            // padding: EdgeInsets.all(15),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    top: 5.0, bottom: 2.0, right: 5, left: 5),
                child: Text(widget.near.title,
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 2.0, right: 5, left: 240),
                child: Icon(
                  Icons.bookmark,
                  color: Colors.orange,
                ),
              )
            ],
          ),
          Column(children: <Widget>[
            // Row(
            //   children: <Widget>[

            //   ],
            // ),
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,
                  margin: const EdgeInsets.only(
                      top: 5.0, bottom: 2.0, right: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        widget.near.point1, // point,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    widget.near.text1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,
                  margin: const EdgeInsets.only(
                      top: 5.0, bottom: 2.0, right: 5, left: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        widget.near.point2, // point2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    widget.near.text2, // text2,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   width: 50.0,
            //   height: 46.0,
            //   // color: Colors.red,
            //   decoration: BoxDecoration(
            //     color: const Color(0xffffffff),
            //     border: Border.all(width: 1.0, color: const Color(0xff707070)),
            //   ),
            // ),
          ]),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 6.0, top: 5.0),
                height: 280,
                width: 190,
                // color: Colors.red,
                child: Text(
                  widget.near.text3, // point,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 6.0, top: 5.0),
                height: 280,
                width: 190,
                // color: Colors.blue,
                child: Text(
                  widget.near.text4, // point,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 5.0, bottom: 2.0, right: 5, left: 5),
            child: Text("รายละเอียดการเดินทาง",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Container(
            margin: EdgeInsets.all(2.0),
            color: Colors.green,
            height: 150.0,
            width: 280,
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 100.0, top: 10.0, bottom: 5.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(
                        2,
                        1,
                      ), // changes position of shadow
                    ),
                  ],
                  // boxShadow: ,
                ),
                child: Icon(Icons.directions),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, top: 10.0, bottom: 5.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(
                        2,
                        1,
                      ), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.call),
              ),
              Container(
                margin: EdgeInsets.only(left: 50.0, top: 10.0, bottom: 5.0),
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(
                        2,
                        1,
                      ), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.share),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                // color: Colors.yellow,
                padding: EdgeInsets.only(
                  bottom: 70.0,
                ),
                margin: EdgeInsets.only(
                  top: 20.0,
                ),
                // padding: EdgeInsets.only(right: 5.0),
                height: 60.0,
                width: 40.0,
                child: Icon(Icons.location_on),
              ),
              Container(
                // color: Colors.pink,
                margin: EdgeInsets.only(top: 20.0, left: 20.0),
                // padding: EdgeInsets.only(right: 5.0),
                height: 60.0,
                width: 300.0,
                child: Text(
                    "ที่อยู่ 123/45 หมู่บ้าน คาซ่าซิตี้ ตำบลบึงคำพร้อย\nจังหวักปทุมธานี"),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                // color: Colors.purple,
                padding: EdgeInsets.only(
                  bottom: 70.0,
                ),

                // padding: EdgeInsets.only(right: 5.0),
                height: 50.0,
                width: 40.0,
                child: Icon(Icons.info_outline),
              ),
              Container(
                // color: Colors.brown,
                margin: EdgeInsets.only(right: 10.0, left: 20.0),
                // padding: EdgeInsets.only(right: 5.0),
                height: 50.0,
                width: 300.0,
                child: Text(
                    "ที่อยู่ 123/45 หมู่บ้าน คาซ่าซิตี้ ตำบลบึงคำพร้อย\nจังหวักปทุมธานี"),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0),
            // color: Colors.red,
            child: Text(
              "อันดับ #49 จาก 1500",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.0, bottom: 5),
            // color: Colors.blue,
            child: Text(
              "ร้านตัดผมในจังหวัดปทุมธานี",
            ),
          ),
          Row(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child: SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 5,
                      size: 20.0,
                      color: Color(0xFFFEBF00),
                      borderColor: Color(0xFFFEBF00),
                      spacing: 0.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child: SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 4,
                      size: 20.0,
                      color: Color(0xFFFEBF00),
                      borderColor: Color(0xFFFEBF00),
                      spacing: 0.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child: SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 3,
                      size: 20.0,
                      color: Color(0xFFFEBF00),
                      borderColor: Color(0xFFFEBF00),
                      spacing: 0.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child: SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 2,
                      size: 20.0,
                      color: Color(0xFFFEBF00),
                      borderColor: Color(0xFFFEBF00),
                      spacing: 0.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 2.0),
                    child: SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 1,
                      size: 20.0,
                      color: Color(0xFFFEBF00),
                      borderColor: Color(0xFFFEBF00),
                      spacing: 0.0,
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 290,
                color: Colors.orange,
              ),
            ],
          ),
          Container(
            // color: Colors.pink,
            margin: EdgeInsets.all(5),
            child: Text("เรียงตาม: ความยอดนิยม/ล่าสุด"),
          ),
          Container(
            height: 200,
            color: Colors.grey,
            child: ReviewShop(),
          ),
        ],
      ),
    );
  }
}
