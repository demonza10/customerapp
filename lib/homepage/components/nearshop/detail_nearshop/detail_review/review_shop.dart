import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/promotion_page/top/slide-imagebar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewShop extends StatelessWidget {
  const ReviewShop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            mocksup.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(15.0),
                      shadowColor: Color(0x802196F3),
                      child: Row(
                        children: <Widget>[
                          Container(
                            // color: Colors.green,
                            margin: EdgeInsets.only(left: 5.0, bottom: 200.0),
                            height: 50.0,
                            width: 50.0,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(mocksup[index].imageAssets),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                // color: Colors.red,
                                margin: EdgeInsets.only(top: 25.0, right: 135),
                                width: 150.0,
                                child: Text(
                                  mocksup[index].title,
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              Container(
                                // color: Colors.blue,
                                margin: EdgeInsets.only(right: 190),
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
                                margin: EdgeInsets.only(left: 2.0, right: 215),
                                child: Text(
                                  mocksup[index].confirm,
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 10.0),
                                ),
                              ),
                              Container(
                                // color: Colors.purple,
                                margin: EdgeInsets.only(right: 150, top: 5.0),
                                child: Text(
                                  mocksup[index].review,
                                ),
                              ),
                              Container(
                                height: 100,

                                color: Colors.blue,
                                // child: SlidImageBar(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}

class Review {
  final String title;
  final String confirm;
  final String review;
  final String imageAssets;
  const Review({this.title, this.confirm, this.review, this.imageAssets});
}

List<Review> mocksup = const <Review>[
  const Review(
      title: 'Sarul Pattamatin',
      confirm: 'ยืนยันตัวตนแล้ว',
      review: 'ร้านสวยและสะอาดมาก\nการบริการก็ดีใส่ใจลูกค้า',
      imageAssets: 'assets/img/product7.jpg'),
  const Review(
      title: 'สินค้า2',
      confirm: 'ยืนยันตัวตนแล้ว',
      review: 'ร้านสวยและสะอาดมาก\nการบริการก็ดีใส่ใจลูกค้า',
      imageAssets: 'assets/img/product8.jpg'),
  const Review(
      title: 'สินค้า3',
      confirm: 'ยืนยันตัวตนแล้ว',
      review: 'ร้านสวยและสะอาดมาก\nการบริการก็ดีใส่ใจลูกค้า',
      imageAssets: 'assets/img/product6.jpg'),
];
