import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/nearshop/slider-storesnearme-shop.dart';

class StoresnearmePage extends StatelessWidget {
  const StoresnearmePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: NearShop(),
    );
  }
}
