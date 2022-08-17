import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context);
                  },
                  child: Icon(
                    Icons.expand_more,
                    color: Color(0xff1BC27A),
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 215,
                ),
                ClipOval(
                  child: Material(
                    color: Color(0xffe1f1eb), // button color
                    child: InkWell(
                      splashColor: Colors.greenAccent, // inkwell color
                      child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.share,
                            color: Color(0xff1BC27A),
                            size: 20,
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                ClipOval(
                  child: Material(
                    color: Color(0xffF4E0E1), // button color
                    child: InkWell(
                      splashColor: Colors.redAccent, // inkwell color
                      child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.favorite,
                              color: Colors.redAccent, size: 20)),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('한 잔 하젠',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                    SizedBox(width: 5),
                    Text(
                      'WC',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Text('⭐️ 청결도 9.0'),
                SizedBox(height: 7),
                Text('\u{1f6bb} 여자 1칸 |  남자 1칸 (남녀 분리형)'), //\u{1F6BD}
                SizedBox(height: 7),
                Text('\u{1f4cd} 제주특별자치도 제주시 오라이동 123-4'),
                SizedBox(height: 7),
                Text('#남녀분리 #디퓨저향기 #팝아트느낌 #일1회청소',
                    style: TextStyle(
                        color: Color(0xff1BC27A), fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(height: 7),
          Container(
              width: 350,
              child: Divider(color: Color(0xffEFEFF0), thickness: 2.0)),
          Container(
            // 수평적으로 대칭(symmetric)의 마진을 추가 -> 화면 위, 아래에 20픽세의 마진 삽입
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            // 컨테이너의 높이를 200으로 설정
            height: 230.0,
            // 리스트뷰 추가
            child: ListView(
              // 스크롤 방향 설정. 수평적으로 스크롤되도록 설정
              scrollDirection: Axis.horizontal,
              // 컨테이너들을 ListView의 자식들로 추가
              children: <Widget>[
                Container(
                  width: 205.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/toilet1.png'),
                    ),
                  ),
                ),
                Container(
                  width: 205.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/toilet2.png'),
                    ),
                  ),
                ),
                Container(
                  width: 205.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/toilet3.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: 350,
              child: Divider(color: Color(0xffEFEFF0), thickness: 2.0)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '시설 세부 정보',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Icon(Icons.wash_rounded,
                              color: Colors.grey, size: 50),
                          SizedBox(height: 10),
                          Text(
                            '액체비누',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Icon(Icons.wifi_rounded,
                              color: Colors.grey, size: 50),
                          SizedBox(height: 10),
                          Text(
                            '와이파이',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Icon(Icons.accessible_rounded,
                              color: Colors.grey, size: 50),
                          SizedBox(height: 10),
                          Text(
                            '장애인 편의',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Icon(Icons.water_drop_rounded,
                              color: Colors.grey, size: 50),
                          SizedBox(height: 10),
                          Text(
                            '비데',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Icon(Icons.smoke_free_rounded,
                              color: Colors.grey, size: 50),
                          SizedBox(height: 10),
                          Text(
                            '금연',
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Detail(),
  ));
}

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.accessibility), onPressed: () {  },),
      actions: [
        ClipOval(
          child: Material(
            color: Color(0xffe1f1eb), // button color
            child: InkWell(
              splashColor: Colors.greenAccent, // inkwell color
              child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.share,
                    color: Color(0xff1BC27A),
                    size: 20,
                  )),
              onTap: () {},
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        ClipOval(
          child: Material(
            color: Color(0xffF4E0E1), // button color
            child: InkWell(
              splashColor: Colors.redAccent, // inkwell color
              child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.favorite,
                      color: Colors.redAccent, size: 20)),
              onTap: () {},
            ),
          ),
        ),
      ],
      ),
      // NewTopNaviBar(),
      body: ListView(children: [


        ContentsTitle(),

        BB(),

        CC(),

        SizedBox(height: 7),
        Container(
          width: 350,
          child: Divider(color: Color(0xffEFEFF0), thickness: 2.0),
        ),

        Container(
            width: 350,
            child: Divider(color: Color(0xffEFEFF0), thickness: 2.0)),

        // 3
      ]),
    );
  }
}

class NewTopNaviBar extends StatelessWidget {
  const NewTopNaviBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.expand_more,
            color: Color(0xff1BC27A),
            size: 30,
          ),
          Row(
            children: [
              ClipOval(
                child: Material(
                  color: Color(0xffe1f1eb), // button color
                  child: InkWell(
                    splashColor: Colors.greenAccent, // inkwell color
                    child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(
                          Icons.share,
                          color: Color(0xff1BC27A),
                          size: 20,
                        )),
                    onTap: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              ClipOval(
                child: Material(
                  color: Color(0xffF4E0E1), // button color
                  child: InkWell(
                    splashColor: Colors.redAccent, // inkwell color
                    child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.favorite,
                            color: Colors.redAccent, size: 20)),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContentsTitle extends StatelessWidget {
  const ContentsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('한 잔 하젠',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              SizedBox(width: 5),
              Text(
                'WC',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 35),
          Text('⭐️ 청결도 9.0'),
          SizedBox(height: 7),
          Text('\u{1f6bb} 여자 1칸 |  남자 1칸 (남녀 분리형)'), //\u{1F6BD}
          SizedBox(height: 7),
          Text('\u{1f4cd} 제주특별자치도 제주시 오라이동 123-4'),
          SizedBox(height: 7),
          Text('#남녀분리 #디퓨저향기 #팝아트느낌 #일1회청소',
              style: TextStyle(
                  color: Color(0xff1BC27A), fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class BB extends StatelessWidget {
  const BB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // 수평적으로 대칭(symmetric)의 마진을 추가 -> 화면 위, 아래에 20픽세의 마진 삽입
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      // 컨테이너의 높이를 200으로 설정
      height: 230.0,
      // 리스트뷰 추가
      child: ListView(
        // 스크롤 방향 설정. 수평적으로 스크롤되도록 설정
        scrollDirection: Axis.horizontal,
        // 컨테이너들을 ListView의 자식들로 추가
        children: <Widget>[
          Container(
            width: 205.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/toilet1.png'),
              ),
            ),
          ),
          Container(
            width: 205.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/toilet2.png'),
              ),
            ),
          ),
          Container(
            width: 205.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/toilet3.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CC extends StatelessWidget {
  const CC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '시설 세부 정보',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Icon(Icons.wash_rounded, color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      '액체비누',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Icon(Icons.wifi_rounded, color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      '와이파이',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Icon(Icons.accessible_rounded,
                        color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      '장애인 편의',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Icon(Icons.water_drop_rounded,
                        color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      '비데',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [
                    Icon(Icons.smoke_free_rounded,
                        color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      '금연',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

 */