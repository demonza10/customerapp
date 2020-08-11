import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        mocksup.length,
        (index) => Center(
          child: Container(
            margin: EdgeInsets.all(2.0),
            child: GridTile(
              footer: Center(),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    mocksup[index].imageAssets,
                  ),
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
  final String imageAssets;
  const Mocksup({this.imageAssets});
}

List<Mocksup> mocksup = const <Mocksup>[
  const Mocksup(imageAssets: 'assets/img/brand1.jpg'),
  const Mocksup(imageAssets: 'assets/img/brand3.png'),
  const Mocksup(imageAssets: 'assets/img/brand3.jpg'),
  const Mocksup(imageAssets: 'assets/img/brand2.2.png'),
  const Mocksup(imageAssets: 'assets/img/brand5.jpg'),
  const Mocksup(imageAssets: 'assets/img/brand6.jpg'),
  const Mocksup(imageAssets: 'assets/img/brand7.png'),
];
