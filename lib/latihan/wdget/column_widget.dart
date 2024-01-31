import 'package:flutter/material.dart';
import 'package:project_flutter/latihan/wdget/row_widget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget> [
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(20),
          color: Colors.green.shade100,
          child: FlutterLogo(),
        ),
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(20),
          child: FlutterLogo(),
          color: Colors.amber,
        ),
        Container(
          child: RowWidget(),
        )
      ],
    );
  }
}
