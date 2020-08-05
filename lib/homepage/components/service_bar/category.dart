import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        mocksup.length,
        (index) => Center(
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: GridTile(
              footer: Center(
                child: Text(
                  mocksup[index].title,
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset(
                  mocksup[index].imageAssets,
                  cacheHeight: 70,
                  cacheWidth: 70,
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
  const Mocksup(title: 'ร้านตัดผมชาย', imageAssets: 'assets/icons/Icon2.jpg'),
  const Mocksup(title: 'ร้านกาแฟ', imageAssets: 'assets/icons/Icon3.jpg'),
  const Mocksup(title: 'คลินิคทันตกรรม', imageAssets: 'assets/icons/Icon4.jpg'),
  const Mocksup(title: 'ร้านอาหาร', imageAssets: 'assets/icons/Icon5.jpg'),
  const Mocksup(title: 'สนามกอล์ฟ', imageAssets: 'assets/icons/Icon6.jpg'),
  const Mocksup(title: 'ฟิตเนส', imageAssets: 'assets/icons/Icon7.jpg'),
  const Mocksup(title: 'ร้านสปา', imageAssets: 'assets/icons/Icon8.jpg'),
  const Mocksup(title: 'ร้านเสริมสวย', imageAssets: 'assets/icons/Icon9.jpg'),
  const Mocksup(title: 'ตลาดสด', imageAssets: 'assets/icons/Icon10.jpg'),
  const Mocksup(
      title: 'ร้านสัตว์เลี้ยง', imageAssets: 'assets/icons/Icon11.jpg'),
];
