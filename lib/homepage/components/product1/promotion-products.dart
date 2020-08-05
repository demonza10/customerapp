import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/product1/slider-products.dart';
// import 'package:queueapp/product1/slider-products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      color: Colors.white,
      child: NewProduct(),
    );
  }
}
