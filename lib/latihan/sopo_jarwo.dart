import 'package:flutter/material.dart';

class MyData {
  final String title;
  final String imageUrl;

  MyData({
    required this.title,
    required this.imageUrl,
  });
}

class SopoJarwo extends StatelessWidget {
  final List<MyData> dataList = [
    MyData(title: "PAK HAJI", imageUrl: "https://i1.sndcdn.com/artworks-000123105997-xrcnay-t500x500.jpg"),
    MyData(title: "Sedang Tayang", imageUrl: "https://i1.sndcdn.com/artworks-000120976060-m57euz-t500x500.jpg"),
    MyData(title: "Sedang Tayang", imageUrl: "https://upload.wikimedia.org/wikipedia/en/c/ce/AditSopoJarwo_logo.png"),
    MyData(title: "Film Kadaluwarsa", imageUrl: "https://i1.sndcdn.com/artworks-000123105997-xrcnay-t500x500.jpg"),
    MyData(title: "Film Kadaluwarsa", imageUrl: "https://s3-alpha.figma.com/hub/file/2540115117/11ca8e14-b09f-4f4b-88e1-fec0bce156d4-cover.png"),
    MyData(title: "Film Kadaluwarsa", imageUrl: "https://destinasibandung.co.id/wp-content/uploads/2017/08/sosmed-2.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white ?? Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      dataList[0].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white ?? Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      dataList[1].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  width: 440,
                  height: 250,
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          dataList[2].imageUrl,
                          alignment: Alignment.center,
                          height: 200,
                          width: 300,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text("Karakter", style: TextStyle(fontSize: 40)),
          Container(
            height: 170,
            color: Colors.white,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                height: 200,
                width: 150,
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Image.network(
                      dataList[index].imageUrl,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text("Gallery", style: TextStyle(fontSize: 40)),
          Container(
            child: GridView.count(
              crossAxisCount: 1, 
              scrollDirection: Axis.vertical                                                                               ,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                4,
                (index) => Container(
                  child: Image.network(
                    dataList[index].imageUrl,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
