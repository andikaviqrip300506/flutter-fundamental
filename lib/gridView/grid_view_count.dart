import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Count"),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              9,
              (index) => Container(
                    child: Card(
                      color: Colors.amber,
                      child: Center(
                        child: Text('${data++}'),
                      ),
                    ),
                  ))),
    );
  }
}
