import 'package:flutter/material.dart';

class NearShop extends StatelessWidget {
  Container MyArticles(
    String imgVal,
    String heading,
    String point,
    String point2,
    String text1,
    String text2,
  ) {
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
            Container(
              margin: EdgeInsets.only(left: 5.0),
              child: Text(heading),
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
                        point,
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
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 35),
      height: 220.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles("assets/img/store1.jpg", "ร้านตัดผม", "5.0", "5.0",
              "คะแนนทั่วไป", "คะแนนความสะอาด"),
          MyArticles("assets/img/store4.jpg", "ฟิตเนส", "4.0", "5.0",
              "คะแนนทั่วไป", "คะแนนความสะอาด"),
          MyArticles("assets/img/store3.jpg", "ร้านกาแฟ", "3.0", "5.0",
              "คะแนนทั่วไป", "คะแนนความสะอาด"),
        ],
      ),
    ));
  }
}
