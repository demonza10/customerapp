import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  Container MyArticles(String imgVal, String heading, String subheading) {
    return Container(
      width: 150.0,
      child: GestureDetector(
        onTap: () {
          print("$imgVal");
        },
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
              ListTile(
                title: Text(
                  heading,
                  // style: TextStyle(color: Colors.yellow),
                ),
                subtitle: Text(
                  subheading,
                  style: TextStyle(color: Colors.yellow[700]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 3.0, bottom: 35),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MyArticles("assets/img/product7.jpg", "Nike", "7900 Bath"),
          MyArticles("assets/img/product8.jpg", "Butiful BB", "1500 Bath"),
          MyArticles("assets/img/product5.jpg", "BB Water Love", "2000 Bath"),
        ],
      ),
    ));
  }
}
