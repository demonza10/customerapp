import 'package:flutter/material.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 170.0, left: 20.0, right: 20.0),
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              offset: Offset(0, 3),
              spreadRadius: 3.0),
        ],
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[800],
              ),
              hintStyle: TextStyle(color: Colors.grey[800], fontSize: 13),
              hintText: "Search Bar"),
        ),
      ),
    );
  }
}
