import 'package:flutter/material.dart';

class SliderImageCoupong extends StatelessWidget {
  const SliderImageCoupong({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        mocksup.length,
        (index) => Center(
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: GridTile(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Image.asset(
                  mocksup[index].imageAssets,
                  cacheHeight: 200,
                  cacheWidth: 300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Mocksup {
  final String title;
  final String imageAssets;
  const Mocksup({this.title, this.imageAssets});
}

List<Mocksup> mocksup = const <Mocksup>[
  const Mocksup(title: 'ร้านตัดผมชาย', imageAssets: 'assets/img/3.jpg'),
  const Mocksup(title: 'ร้านกาแฟ', imageAssets: 'assets/img/3.jpg'),
  const Mocksup(title: 'คลินิคทันตกรรม', imageAssets: 'assets/img/3.jpg'),
  const Mocksup(title: 'ร้านอาหาร', imageAssets: 'assets/img/3.jpg'),
  // const Mocksup(
  //     title: 'สนามกอล์ฟ',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_5.jpg'),
  // const Mocksup(
  //     title: 'ฟิตเนส',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_6.jpg'),
  // const Mocksup(
  //     title: 'ร้านสปา',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_10.jpg'),
  // const Mocksup(
  //     title: 'ร้านเสริมสวย',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_8.jpg'),
  // const Mocksup(
  //     title: 'ตลาดสด',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_9.jpg'),
  // const Mocksup(
  //     title: 'ร้านสัตว์เลี้ยง',
  //     imageAssets: 'assets/images/img-services/coupong/Icon_7.jpg'),
];
