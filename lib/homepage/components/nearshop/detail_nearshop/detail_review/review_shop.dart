import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/promotion_page/top/slide-imagebar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewShop extends StatelessWidget {
  const ReviewShop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          mocksup.length,
          (index) => Container(
            height: 300.0,
            width: 300.0,
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        // color: Colors.green,
                        // margin: EdgeInsets.only(left: 5.0, bottom: 200.0),
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
                            // margin: EdgeInsets.only(right: 130),
                            width: 150.0,
                            child: Text(
                              mocksup[index].title,
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                          Container(
                            // color: Colors.blue,
                            // margin: EdgeInsets.only(right: 180),
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
                            // margin: EdgeInsets.only(right: 200),
                            child: Text(
                              mocksup[index].confirm,
                              style: TextStyle(
                                  color: Colors.green, fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        // color: Colors.purple,
                        // margin: EdgeInsets.only(right: 150, top: 5.0),
                        child: Text(
                          mocksup[index].review,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: GridView.count(
                          scrollDirection: Axis.horizontal,
                          crossAxisCount: 1,
                          children: List.generate(mocksup.length, (index) {
                            return Container(
                              child: Card(
                                // child: Text("data"),
                                // color: Colors.amber,
                                child: Image.asset(
                                  mocksup[index].imageAssets,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
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
      title: 'Sarul Pattamatin',
      confirm: 'ยืนยันตัวตนแล้ว',
      review: 'ร้านสวยและสะอาดมาก\nการบริการก็ดีใส่ใจลูกค้า',
      imageAssets: 'assets/img/product8.jpg'),
  const Review(
      title: 'Sarul Pattamatin',
      confirm: 'ยืนยันตัวตนแล้ว',
      review: 'ร้านสวยและสะอาดมาก\nการบริการก็ดีใส่ใจลูกค้า',
      imageAssets: 'assets/img/product1.jpg'),
];
