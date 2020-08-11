import 'package:flutter/material.dart';

class HotProduct extends StatelessWidget {
  Container MyArticles(
    String imgVal,
    String heading,
    String point1,
    String text1,
    String point2,
    String text2,
  ) {
    return Container(
      width: 150.0,
      child: Card(
        child: Wrap(children: <Widget>[
          Center(
            child: Image.asset(
              imgVal,
              height: 100.0,
              // width: 100.0,
              // fit: BoxFit.contain,
            ),
          ),
          Text(heading),
          Row(
            children: <Widget>[
              Container(
                // color: Colors.yellow,
                margin: const EdgeInsets.only(
                    top: 10.0, bottom: 2.0, right: 5, left: 5),
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
                      point1,
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
                  text1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
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
                      point2,
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
                  text2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(bottom: 30.0),
      height: 230.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles("assets/img/store7.jpg", "นาย ก. บาร์", "5.0",
              "คะแนนทั่วไป", "5.0", "คะแนนความสะอาด"),
          MyArticles("assets/img/store6.jpg", "ร้านกาแฟนายก", "4.0",
              "คะแนนทั่วไป", "5.0", "คะแนนความสะอาด"),
          MyArticles(
            "assets/img/store8.jpg",
            "ทิ้งโค้งรีสอร์ท",
            "3.0",
            "คะแนนทั่วไป",
            "5.0",
            "คะแนนความสะอาด",
          ),
        ],
      ),
    ));
  }
}
