import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  Container MyArticles(
    String imgVal,
    String heading1,
    String text2,
    String text3,
    String text4,
    String avata,
    String username,
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
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        heading1,
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,

                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        text2,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,

                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        text3,
                        style: TextStyle(
                          color: Colors.orange[800],
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  // color: Colors.yellow,

                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        text4,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(avata),
                  ),
                ),
                Container(
                  // color: Colors.yellow,
                  margin: EdgeInsets.only(top: 5.0),
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        username,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
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
      margin: EdgeInsets.only(top: 5.0),
      height: 235.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles(
              "assets/img/store1.jpg",
              "ให้คะแนะ 4.0",
              "บรรยายกาศดีมากครับ",
              "ให้คะแนนความสะอาด 5.0",
              "ร้านสะอาดมากๆครับ",
              "assets/img/avata1.jpg",
              "User1"),
          MyArticles(
              "assets/img/store4.jpg",
              "ให้คะแนะ 4.0",
              "อุปกรณ์ครบ",
              "ให้คะแนนความสะอาด 4.0",
              "อุปกรณ์สะอาดมากครับ",
              "assets/img/avata2.jpg",
              "User2"),
          MyArticles(
              "assets/img/store3.jpg",
              "ให้คะแนะ 4.0",
              "ร้านสวยมาก",
              "ให้คะแนนความสะอาด 4.0",
              "สะอาดมากๆครับ",
              "assets/img/avata3.jpg",
              "User3"),
        ],
      ),
    ));
  }
}
