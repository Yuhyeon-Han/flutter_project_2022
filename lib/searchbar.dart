import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterproject/result_search.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.greenAccent,
              )),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1BC27A), width: 1)),
              prefixIcon: GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultSearchList())
                  );
                },
                child: Container(
                  child: Icon(
                    Icons.search,
                    color: Color(0xff1BC27A),
                  ),
                ),
              ),
              hintText: '카페명, 주소 검색',
            ),
          ),
        ),
      ),
    );
  }
}




//focusedBorder: const OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),

/* SizedBox( child: Row(
children: [
IconButton(
onPressed: () {
print('back'); // 뒤로가기
},
color: Color(0xff1BC27A),
icon: Icon(Icons.chevron_left)),
Expanded(
child: TextField(
decoration: InputDecoration(hintText: '카페명, 주소 검색'),
),
),
IconButton(
icon: Icon(
Icons.search,
color: Color(0xff1BC27A),
),
onPressed: () {
print('search button is clicked');
}),
],
), */
