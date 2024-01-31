import 'package:flutter/material.dart';
import 'package:project_flutter/latihan/fauna/fauna_form.dart';
import 'package:project_flutter/latihan/gridv/grid_view_builder.dart';
import 'package:project_flutter/latihan/gridv/grid_view_count.dart';
import 'package:project_flutter/latihan/listv/list_view.dart';
import 'package:project_flutter/latihan/navigator/firstRoute.dart';
import 'package:project_flutter/latihan/navigator/secondRoute.dart';
import 'package:project_flutter/latihan/fauna/list_fauna.dart';


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
          '/listfauna': (context) => ListFaunaScreen(),
          '/form' : (context) => FaunaForm()
    },
    );
  }
}

