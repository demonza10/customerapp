import 'package:flutter/material.dart';

class Iconlayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: GestureDetector(
          onTap: () {
            final snackBar = SnackBar(content: Text("Tap"));

            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
