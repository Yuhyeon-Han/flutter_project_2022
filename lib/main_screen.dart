import 'package:flutter/material.dart';
import 'package:flutterproject/favorite.dart';
import 'package:flutterproject/recommend_list.dart';
import 'package:flutterproject/searchbar.dart';


class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                // 현재 계정 이미지 set
                backgroundImage: AssetImage('assets/thumbs_up.PNG'),
                backgroundColor: Colors.white,
              ),
              accountName: Text(
                '    한유현',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('    usemejeju@email.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Color(0xff1BC27A),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.wc_rounded,
                color: Colors.grey[850],
              ),
              title: Text('내정보'),
              onTap: () {
                print('내정보 is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.grey[850],
              ),
              title: Text('좋아요'),
              onTap: () {
                print('좋아요 is clicked');
              },
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyFovorites())
                    );
                  },
                  child: Icon(Icons.add)),
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: Colors.grey[850],
              ),
              title: Text('공지사항'),
              onTap: () {
                print('공지사항 is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('문의하기'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('설정'),
              onTap: () {
                print('설정 is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/map_map.png'),
                  width: double.infinity,
                  height: 840,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 60,
                    left: 20,
                    child: Builder(builder: (context) {
                      return Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Theme.of(context).shadowColor.withOpacity(0.3),
                                offset: const Offset(0, 3),
                                blurRadius: 5.0)
                          ],
                          color: Color(0xff1BC27A),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      );
                    })),
                Positioned(
                  top: 60,
                  left: 77,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchBar()),
                      );
                    },
                    child: Container(
                      height: 45,
                      width: 300,
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
                            SizedBox(
                              child:
                              Text('카페명, 주소 검색', style: TextStyle(color: Colors.grey)),
                            ),
                            Icon(Icons.search, color: Color(0xff1BC27A))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RecommendList()));
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Theme.of(context).shadowColor.withOpacity(0.3),
                              offset: const Offset(0, 3),
                              blurRadius: 5.0)
                        ],
                        color: Color(0xff1BC27A),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 4),
                          Image(
                            image: AssetImage('assets/thumbs_up.PNG'),
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                          Text('가까운 화장실', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}











