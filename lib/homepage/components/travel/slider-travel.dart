import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/travel/travel.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: Colors.white,
      child: Travel(),
    );
  }
}
