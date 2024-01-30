import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          color: Colors.amber,
          child: Center(
            child: Text("1", style: TextStyle(fontSize: 24.0),),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: Text("2", style: TextStyle(fontSize: 24.0),),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text("3", style: TextStyle(fontSize: 24.0),),
          ),
        ),
        Container(
          color: Colors.black,
          child: Center(
            child: Text("4", style: TextStyle(fontSize: 24.0),),
          ),
        ), Container(
          color: Colors.grey,
          child: Center(
            child: Text("5", style: TextStyle(fontSize: 24.0),),
          ),
        ),
        Container(
          color: Colors.amber,
          child: Center(
            child: Text("6", style: TextStyle(fontSize: 24.0),),
          ),
        )
      ],
    );
  }
}