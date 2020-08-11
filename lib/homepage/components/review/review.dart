import 'package:flutter/material.dart';

import 'package:queueapp/homepage/components/review/slider-review.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      child: Review(),
    );
  }
}
