import 'package:flutter/material.dart';
import 'package:flutterproject/result_datail_map.dart';
import 'package:flutterproject/searchbar.dart';

class ResultSearchList extends StatelessWidget {
  const ResultSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.greenAccent,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1BC27A), width: 1)),
                    prefixIcon: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => SearchBar())
                        );
                      },
                      child: Container(
                        child: Icon(
                          Icons.chevron_left,
                          color: Color(0xff1BC27A),
                        ),
                      ),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        Navigator.pop(
                            context);
                      },
                      child: Container(
                        child: Icon(
                          Icons.cancel_rounded,
                          color: Color(0xff1BC27A),
                        ),
                      ),
                    ),
                    hintText: '한 잔 하젠',
                  ),
                ),
              ),
            Column(
                children: <Widget>[
                  chipList(),
                ],
              ),
            SizedBox(
              height: 40,
            ),
            Text(
              "'한 잔 하젠' 검색 결과입니다.",
              style: TextStyle(
                  fontWeight: FontWeight.w100, color: Color(0xff82808B)),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultDetailMap())
                  );
                },
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
                              '한 잔 하젠 WC',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text('⭐️ 청결도 9.0',
                                style: TextStyle(color: Colors.grey, fontSize: 13)),
                            Text('\u{1f6bb} 여자 1칸 | 남자 1칸 (남녀 분리형)',
                                style: TextStyle(color: Colors.grey, fontSize: 13)),
                            Text(
                              '\u{1f4cd} 제주시 오라이동 123-4',
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        )),
                      ],
                    ),
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

Widget _buildChip(String label, Color color) {
  return Chip(
    labelPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    label: Text(
      label,
      style: TextStyle(
        color: Color(0xFFD36019),
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    ),
    backgroundColor: color,
    elevation: 6.0,
    shadowColor: Colors.grey[60],
    padding: EdgeInsets.all(8.0),
  );
}

chipList() {
  return Wrap(
    spacing: 30.0,
    runSpacing: 10.0,
    children: <Widget>[
      _buildChip('가까운순', Color(0xFFF4EEE1)),
      _buildChip('청결도순', Color(0xFFF4EEE1)),
      _buildChip('남녀분리', Color(0xFFF4EEE1)),
    ],
  );
}

/* SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                      )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff1BC27A), width: 1)),
                  prefixIcon: Icon(
                    Icons.chevron_left,
                    color: Color(0xff1BC27A),
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xff1BC27A),
                  ),
                  hintText: '카페명, 주소 검색',
                ),
              ),
            ),
          ),
          */
