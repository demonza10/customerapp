import 'package:flutter/material.dart';
// import 'package:queueapp/homepage/components/navigationbar/a.dart';
import 'package:queueapp/homepage/components/news/slider-hotnewstores.dart';

class HotNewStoresPage extends StatelessWidget {
  const HotNewStoresPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: Colors.white,
      child: HotProduct(),
    );
  }
}
