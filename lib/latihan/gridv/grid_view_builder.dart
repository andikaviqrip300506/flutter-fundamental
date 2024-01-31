import 'package:flutter/material.dart';

class GriddBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 1;
    var color = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Builder"),
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
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              color: Colors.red[color += 100],
              child: Center(
                child: Text(
                  "${data++}",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
