import 'package:flutter/material.dart';
import 'package:project_flutter/gridView/grid_view_builder.dart';
import 'package:project_flutter/gridView/grid_view_count.dart';
import 'package:project_flutter/latihan/list_view.dart';
import 'package:project_flutter/navigator/firstRoute.dart';
import 'package:project_flutter/navigator/secondRoute.dart';


void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,  title: 'Named Routes',
        initialRoute: '/',
        routes: {
          '/' : (context) => firstRoute(),
          '/second' : (context) =>  secondRoute(),
          '/listview' : (context) => ListnView(),
          '/gridview' :(context) => GridCount(),
          '/gridbuilder' :(context) => GriddBuilder(),
    },
    );
  }
}

