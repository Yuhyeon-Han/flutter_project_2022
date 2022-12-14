import 'package:flutter/material.dart';
import 'package:flutterproject/searchbar.dart';

class RecommendList extends StatelessWidget {
  const RecommendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,5,20),
                  child: Container(
                    height: 45,
                    width: 350,
                    decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Theme.of(context).shadowColor.withOpacity(0.3),
                            offset: const Offset(0, 3),
                            blurRadius: 5.0)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap:(){

                                Navigator.pop(
                                  context);

                              } ,
                              child: Icon(Icons.chevron_left_rounded,color: Color(0xff1BC27A))),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SearchBar()));
                            },
                            child: SizedBox(
                              child:
                              Text('?????????, ?????? ??????', style: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SearchBar()));
                              },
                              child: Icon(Icons.search, color: Color(0xff1BC27A)))
                        ],
                      ),
                    ),
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                '?????? ????????? ????????? ????????? ??????',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white12,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/toilet1.png',
                          width: 80,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '??? ??? ?????? WC',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Text('?????? ????????? 9.0',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text('\u{1f6bb} ?????? 1??? | ?????? 1??? (?????? ?????????)',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text(
                                '\u{1f4cd} ????????? ???????????? 123-4',
                                style: TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white12,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/toilet2.png',
                          width: 80,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '?????? ?????? WC',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Text('?????? ????????? 9.5',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text('\u{1f6bb} ?????? 2??? | ?????? 2??? (?????? ?????????)',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text(
                                '\u{1f4cd} ????????? ????????? 123-4',
                                style: TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white12,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          'assets/toilet3.png',
                          width: 80,
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '????????? ?????? WC',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 15),
                              ),
                              SizedBox(height: 10),
                              Text('?????? ????????? 9.0',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text('\u{1f6bb} ?????? 1??? | ?????? 1??? (?????? ?????????)',
                                  style: TextStyle(color: Colors.grey, fontSize: 13)),
                              Text(
                                '\u{1f4cd} ????????? ?????? 123-4',
                                style: TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

ThemeData myTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0.5,
    iconTheme: IconThemeData(color: Color(0xff1BC27A)),
  ),
);