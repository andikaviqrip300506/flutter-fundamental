import 'package:flutter/material.dart';

class GriddBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = 1;
    var color = 0;
    return GridView.builder(
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
    );
  }
}
