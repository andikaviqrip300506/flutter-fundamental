import 'package:flutter/material.dart';
import 'package:project_flutter/latihan/navigator.dart';





void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
        title: 'Named Routes',
        initialRoute: '/',
        routes: {
          '/' : (context) => const firstRoute(),
          '/second' : (contect) => const secondRoute(),
    },
      home: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Flutter",
                style:
                    TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold)),
            backgroundColor: Color.fromARGB(255, 164, 50, 44),
            centerTitle: true,

          ),
          backgroundColor: Colors.redAccent,
          body: firstRoute(), ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Andika Pratama",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
