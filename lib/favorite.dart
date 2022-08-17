import 'package:flutter/material.dart';
import 'package:flutterproject/main_screen.dart';

class  MyFovorites extends StatelessWidget {
  const MyFovorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                              context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Color(0xff1BC27A),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '좋아요 \u{1F49A}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:50),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ), boxShadow: [
                      BoxShadow(
                        color:  Color(0xff9E9E9E),
                        offset: Offset(4.0, 4.0),
                        blurRadius:  15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/toilet1.png',
                              width: 60,

                            ),
                          ),
                          Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '한 잔 하젠 WC',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700, fontSize: 13),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    '제주시 오라이동 123-4',
                                    style: TextStyle(color: Colors.grey, fontSize: 11),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '⭐️ 9.0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ), boxShadow: [
                      BoxShadow(
                        color:  Color(0xff9E9E9E),
                        offset: Offset(4.0, 4.0),
                        blurRadius:  15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/toilet2.png',
                              width: 60,

                            ),
                          ),
                          Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '카페 마씸 WC',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700, fontSize: 13),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    '제주시 아라동 123-4',
                                    style: TextStyle(color: Colors.grey, fontSize: 11),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 29,
                          ),
                          Text(
                            '⭐️ 9.5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ), boxShadow: [
                      BoxShadow(
                        color:  Color(0xff9E9E9E),
                        offset: Offset(4.0, 4.0),
                        blurRadius:  15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/toilet3.png',
                              width: 60,

                            ),
                          ),
                          Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '요망진 라떼 WC',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700, fontSize: 13),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    '제주시 건입동 123-4',
                                    style: TextStyle(color: Colors.grey, fontSize: 11),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: 29,
                          ),
                          Text(
                            '⭐️ 8.0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

