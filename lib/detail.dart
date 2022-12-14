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
                    Text('??? ??? ??????',
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
                Text('?????? ????????? 9.0'),
                SizedBox(height: 7),
                Text('\u{1f6bb} ?????? 1??? |  ?????? 1??? (?????? ?????????)'), //\u{1F6BD}
                SizedBox(height: 7),
                Text('\u{1f4cd} ????????????????????? ????????? ???????????? 123-4'),
                SizedBox(height: 7),
                Text('#???????????? #??????????????? #??????????????? #???1?????????',
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
            // ??????????????? ??????(symmetric)??? ????????? ?????? -> ?????? ???, ????????? 20????????? ?????? ??????
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            // ??????????????? ????????? 200?????? ??????
            height: 230.0,
            // ???????????? ??????
            child: ListView(
              // ????????? ?????? ??????. ??????????????? ?????????????????? ??????
              scrollDirection: Axis.horizontal,
              // ?????????????????? ListView??? ???????????? ??????
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
                  '?????? ?????? ??????',
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
                            '????????????',
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
                            '????????????',
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
                            '????????? ??????',
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
                            '??????',
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
                            '??????',
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
              Text('??? ??? ??????',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              SizedBox(width: 5),
              Text(
                'WC',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 35),
          Text('?????? ????????? 9.0'),
          SizedBox(height: 7),
          Text('\u{1f6bb} ?????? 1??? |  ?????? 1??? (?????? ?????????)'), //\u{1F6BD}
          SizedBox(height: 7),
          Text('\u{1f4cd} ????????????????????? ????????? ???????????? 123-4'),
          SizedBox(height: 7),
          Text('#???????????? #??????????????? #??????????????? #???1?????????',
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
      // ??????????????? ??????(symmetric)??? ????????? ?????? -> ?????? ???, ????????? 20????????? ?????? ??????
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
      // ??????????????? ????????? 200?????? ??????
      height: 230.0,
      // ???????????? ??????
      child: ListView(
        // ????????? ?????? ??????. ??????????????? ?????????????????? ??????
        scrollDirection: Axis.horizontal,
        // ?????????????????? ListView??? ???????????? ??????
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
            '?????? ?????? ??????',
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
                      '????????????',
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
                      '????????????',
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
                      '????????? ??????',
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
                      '??????',
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
                      '??????',
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