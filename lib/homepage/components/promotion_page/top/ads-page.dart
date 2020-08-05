import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/promotion_page/top/slide-imagebar.dart';
import 'package:queueapp/homepage/components/search/search-bar.dart';

class AdsImageBarPage extends StatelessWidget {
  const AdsImageBarPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: SlidImageBar(),
          ),
        ),
        Center(
          child: SearchBarPage(),
        ),
      ],
    );
  }
}
