import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/promotion_page/slide-imagepromotion-content.dart';

class PromotionContentPage extends StatelessWidget {
  const PromotionContentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.white,
      child: SlidImagePromotionContent(),
    );
  }
}
