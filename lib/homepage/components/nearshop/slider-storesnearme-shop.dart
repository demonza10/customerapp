import 'package:flutter/material.dart';
import 'package:queueapp/homepage/components/nearshop/detail_nearshop/detail_nearshop.dart';
// import 'package:queueapp/homepage/components/navigationbar/b.dart';
// import 'package:queueapp/homepage/components/navigationbar/c.dart';

class NearShop extends StatelessWidget {
  const NearShop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          mocksup.length,
          (index) => Container(
            // height: 200,
            width: 150.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailNear(near: mocksup[index])),
                );
                print(mocksup[index].title);
              },
              child: Card(
                child: Wrap(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        mocksup[index].imageAssets,
                        height: 100.0,
                        // width: 100.0,
                        // fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: Text(
                        mocksup[index].title,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(
                              top: 5.0, bottom: 2.0, right: 5, left: 5),
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
                                mocksup[index].point1, // point,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 1.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            mocksup[index].text1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          // color: Colors.yellow,
                          margin: const EdgeInsets.only(
                              top: 5.0, bottom: 2.0, right: 5, left: 5),
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
                                mocksup[index].point2, // point2,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 1.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            mocksup[index].text2, // text2,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 9.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
  final String point1;
  final String point2;
  final String imageAssets;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const Mocksup({
    this.title,
    this.point1,
    this.point2,
    this.imageAssets,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
  });
}

List<Mocksup> mocksup = const <Mocksup>[
  const Mocksup(
      title: 'ร้านตัดผม',
      point1: '5.0',
      point2: '4.0',
      text1: 'คะแนนทั่วไป',
      text2: 'คะแนนความสะอาด',
      text3:
          'รายละเอียด\nเวลาเปิด-เวลาปิด: เปิดทุกวัน 8.00 - 18.00\n\nบริการของร้าน\n-มีที่จอดรถ\n-บริการ Wi-fi ฟรี\n-รับจองล่วงหน้า\n-รับตัดผมเด็ก\n\nช่วงราคา\nผู้ใหญ่ 150 บาท\nเด็ก 100 บาท',
      text4:
          'บริการความสะอาด\n\nมาตการทำความสะอาด\n\n-มีการทำความสะอาดพื้นทางเดินและผนัง\nโดยใช้น้ำยาทำความสะอาดแบบฆ่าเชื้อ ทุกๆ 6 ชั่วโมง\n\n-มีการทำความสะอาดอุปกรณ์ทุกครั้งหลังให้บริการ\n\n-มีแอลกอฮอร์ทำความสะอาดพร้อมให้บริการลูกค้าที่มาใช้บริการ',
      imageAssets: 'assets/img/store1.jpg'),
  const Mocksup(
      title: 'ฟิตเนส',
      point1: '5.0',
      point2: '4.0',
      text1: 'คะแนนทั่วไป',
      text2: 'คะแนนความสะอาด',
      text3:
          'รายละเอียด\nเวลาเปิด-เวลาปิด: เปิดทุกวัน 8.00 - 18.00\n\nบริการของร้าน\n-มีที่จอดรถ\n-บริการ Wi-fi ฟรี\n-รับจองล่วงหน้า\n-รับตัดผมเด็ก\n\nช่วงราคา\nผู้ใหญ่ 150 บาท\nเด็ก 100 บาท',
      text4:
          'บริการความสะอาด\n\nมาตการทำความสะอาด\n\n-มีการทำความสะอาดพื้นทางเดินและผนัง\nโดยใช้น้ำยาทำความสะอาดแบบฆ่าเชื้อ ทุกๆ 6 ชั่วโมง\n\n-มีการทำความสะอาดอุปกรณ์ทุกครั้งหลังให้บริการ\n\n-มีแอลกอฮอร์ทำความสะอาดพร้อมให้บริการลูกค้าที่มาใช้บริการ',
      imageAssets: 'assets/img/store4.jpg'),
  const Mocksup(
      title: 'ร้านกาแฟ',
      point1: '5.0',
      point2: '4.0',
      text1: 'คะแนนทั่วไป',
      text2: 'คะแนนความสะอาด',
      text3:
          'รายละเอียด\nเวลาเปิด-เวลาปิด: เปิดทุกวัน 8.00 - 18.00\n\nบริการของร้าน\n-มีที่จอดรถ\n-บริการ Wi-fi ฟรี\n-รับจองล่วงหน้า\n-รับตัดผมเด็ก\n\nช่วงราคา\nผู้ใหญ่ 150 บาท\nเด็ก 100 บาท',
      text4:
          'บริการความสะอาด\n\nมาตการทำความสะอาด\n\n-มีการทำความสะอาดพื้นทางเดินและผนัง\nโดยใช้น้ำยาทำความสะอาดแบบฆ่าเชื้อ ทุกๆ 6 ชั่วโมง\n\n-มีการทำความสะอาดอุปกรณ์ทุกครั้งหลังให้บริการ\n\n-มีแอลกอฮอร์ทำความสะอาดพร้อมให้บริการลูกค้าที่มาใช้บริการ',
      imageAssets: 'assets/img/store3.jpg'),
];
