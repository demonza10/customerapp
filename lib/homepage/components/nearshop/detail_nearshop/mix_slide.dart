import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/iconlayout.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/slid_nearshop.dart';
import 'package:queueapp/homepage/components/promotion_page/top/slide-imagebar.dart';
import 'package:queueapp/homepage/components/search/search-bar.dart';

class MixPage extends StatelessWidget {
  const MixPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
          child: SlideDetailNear(),
        ),
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Iconlayout(),
          ),
        ),
      ],
    );
  }
}
