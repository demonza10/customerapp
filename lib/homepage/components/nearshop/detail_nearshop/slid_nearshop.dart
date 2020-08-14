// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// final List<Widget> imgList = [
//   // Imageads()
//   Center(
//       child: Image.asset('assets/img/product7.jpg',
//           fit: BoxFit.cover, width: 1000)),
//   Center(
//       child: Image.asset('assets/img/product7.jpg',
//           fit: BoxFit.cover, width: 1000)),
//   Center(
//       child: Image.asset('assets/img/product7.jpg',
//           fit: BoxFit.cover, width: 1000))
// ];

// class SlideDetailN extends StatelessWidget {
//   const SlideDetailN({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(height: 250, color: Colors.blue, child: Imageads());
//   }
// }

// class Imageads extends StatelessWidget {
//   const Imageads({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // child: Image.asset(
//       //   'assets/image/1.jpg',
//       //   fit: BoxFit.cover,
//       //   width: 1000,
//       // ),

//       child: CarouselSlider(
//         items: imgList,
//         options:
//             CarouselOptions(height: 250, viewportFraction: 1.0, autoPlay: true),
//       ),
//     );
//   }
// }

// // class Mocksup {
// //   final String title;
// //   final String price;
// //   final String discount;
// //   final String imageAssets;
// //   const Mocksup({this.title, this.price, this.discount, this.imageAssets});
// // }

// // List<Mocksup> mocksup = const <Mocksup>[
// //   const Mocksup(
// //       title: 'NIKE',
// //       price: '฿7900',
// //       discount: 'ลด 50%',
// //       imageAssets: 'assets/img/product7.jpg'),
// //   const Mocksup(
// //       title: 'สินค้า2',
// //       price: '฿1500',
// //       discount: 'ลด 30%',
// //       imageAssets: 'assets/img/product8.jpg'),
// //   const Mocksup(
// //       title: 'สินค้า3',
// //       price: '฿590',
// //       discount: 'ลด 70%',
// //       imageAssets: 'assets/img/product6.jpg'),
// // ];

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideDetailNear extends StatefulWidget {
  SlideDetailNear({Key key}) : super(key: key);

  @override
  _SlideDetailNearState createState() => _SlideDetailNearState();
}

class _SlideDetailNearState extends State<SlideDetailNear> {
  final List<String> images = [
    'assets/img/store1.jpg',
    'assets/img/store1.jpg',
    'assets/img/store1.jpg',
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((asset) {
        // precacheImage(NetworkImage(imageUrl), context);
        precacheImage(AssetImage(asset), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: Center(
              child: Image.asset(
            images[index],
            fit: BoxFit.cover,
            width: 1000,
            height: 200,
          )),
        );
      },
    );
  }
}
