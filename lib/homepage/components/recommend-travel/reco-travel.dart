import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/recommend-travel/reco-silder.dart';
import 'package:queueapp/homepage/components/travel/travel.dart';

class RecommendTravel extends StatelessWidget {
  const RecommendTravel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: Colors.white,
      child: ReTravel(),
    );
  }
}
