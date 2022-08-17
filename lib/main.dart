import 'package:flutter/material.dart';
import 'package:flutterproject/main_screen.dart';
import 'package:flutterproject/recommend_list.dart';
import 'package:flutterproject/result_datail_map.dart';
import 'package:flutterproject/result_search.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: myTheme,
      home: ResultDetailMap(),
    );
  }
}
