import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/coupon_bar/slider-imagecoupong.dart';

class CouPongPage extends StatelessWidget {
  const CouPongPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.white,
      child: SliderImageCoupong(),
    );
  }
}
