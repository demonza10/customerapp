import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/store_layout/slider-topshop.dart';

class TopShopPage extends StatelessWidget {
  const TopShopPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: Colors.white,
      child: TopShop(),
    );
  }
}
