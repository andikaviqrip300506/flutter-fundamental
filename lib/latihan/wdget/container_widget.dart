import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationX(0.3),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.white, Color.fromARGB(255, 0, 0, 0)],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 145, 145, 145), width: 3),
      ),
    );
  }
}
