import 'package:flutter/material.dart';

class ReTravel extends StatelessWidget {
  const ReTravel({
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
              header: Center(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 85.0, left: 5.0),
                      child: Container(
                          // child: Text(
                          //   mocksup[index].title,
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 18,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
              footer: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 3.0),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 5,
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  mocksup[index].rating,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2.0, bottom: 3.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              child: Text(
                                mocksup[index].title,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, bottom: 0.0),
                child: Image.asset(
                  mocksup[index].imageAssets,
                  // cacheHeight: 190,
                  // cacheWidth: 250,
                  fit: BoxFit.cover,
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
  final String rating;
  final String imageAssets;
  const Mocksup({this.title, this.rating, this.imageAssets});
}

List<Mocksup> mocksup = const <Mocksup>[
  const Mocksup(
      title: 'หาดภูเก็ต', rating: '4.5', imageAssets: 'assets/img/travel4.jpg'),
  const Mocksup(
      title: 'วัด', rating: '3.5', imageAssets: 'assets/img/travel5.jpg'),
  const Mocksup(
      title: 'รีสอร์ท', rating: '2.0', imageAssets: 'assets/img/travel6.jpg'),
];
