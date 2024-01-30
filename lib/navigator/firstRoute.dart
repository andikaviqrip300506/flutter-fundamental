import 'package:flutter/material.dart';

class firstRoute extends StatelessWidget {
  const firstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listview');
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
              child: Icon(
                Icons.home,
                color: Colors.amber,
                size: 40,
              ),
            ),
          ),
           Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridview');
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
              child: Icon(
                Icons.apps,
                color: Colors.amber,
                size: 40,
              ),
            ),
          ),
           Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridbuilder');
              },
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey)),
              child: Icon(
                Icons.ballot_rounded,
                color: Colors.amber,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
