import 'package:flutter/material.dart';

class MyData {
  final String title;
  final String imageUrl;

  MyData({
    required this.title,
    required this.imageUrl,
  });
}

class ListnView extends StatelessWidget {


  final List<MyData> dataList = [
    MyData(title: "Upcoming Captain Marvel", imageUrl: ""),
    MyData(title: "Sedang Tayang", imageUrl: "l"),
    MyData(title: "Sedang Tayang", imageUrl: ""),
    MyData(title: "Film Kadaluwarsa", imageUrl: ""),
    MyData(title: "Film Kadaluwarsa", imageUrl: ""),
    MyData(title: "Film Kadaluwarsa", imageUrl: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  child: Container(
                    width: 250,
                    height: 100,
                    color: Colors.grey,
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          dataList[index].imageUrl,
                          width: 100,
                          height: 100,
                          cacheHeight: 100,
                          cacheWidth: 100,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          dataList[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                      ),
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Center(
                  child: Container(
                    width: 120,
                    height: 100,
                    color: Colors.grey,
                    margin: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          dataList[index].imageUrl,
                          width: 80,
                          height: 100,
                          cacheHeight: 100,
                          cacheWidth: 100,
                        ),
                      ],
                      ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}