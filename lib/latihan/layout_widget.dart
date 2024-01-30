import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
        Container(
          width: 200,
          height: 60,
          color: Colors.grey,
          alignment: Alignment.center,
          child:  Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.home,
                   color: Colors.black,
              ),
              Container(
                child: Text("Home", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Container(
                child: Text("Search", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.call,
                color: Colors.black,
              ),
              Container(
                 child: Text("Call", style: TextStyle(color: Colors.white),),
              )
            ],
          )
        ],
      ),
        )
    );
  }
}