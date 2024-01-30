import 'package:flutter/material.dart';

class MultipleContainersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 1000,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 115, 239, 255),
        ),
        Container(
          height: 1000,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 106, 155, 195),
        ),
        Container(
          height: 900,
          width: double.infinity,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 74, 126, 126),
        ),
        Container(
          height: 800,
          width: double.infinity,
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(50),
          alignment: Alignment.center,
          color: Color.fromARGB(255, 62, 68, 97),
        )

      ],
    );
  }
}

