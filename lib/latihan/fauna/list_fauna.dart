import 'package:flutter/material.dart';
import 'package:project_flutter/helpers/size_helper.dart';
import 'package:project_flutter/latihan/fauna/detail_fauna.dart';

class ListFaunaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Harimau",
      "jenis": "Karnivora",
      "image": "assets/image/harimau.jpg",
      "desc": "Harimau adalah"
    },
    {
      "nama": "Singa",
      "jenis": "Karnivora",
      "image": "assets/image/singa.jpg",
      "desc": "Singa adalah"
    },
    {
      "nama": "Serigala",
      "jenis": "Karnivora",
      "image": "assets/image/wolf.jpg",
      "desc": "Harimau adalah"
    },
    {
      "nama": "Kucing",
      "jenis": "Karnivora",
      "image": "assets/image/kucing.jpg",
      "desc": "Kucing adalah"
    },
    {
      "nama": "Tupai",
      "jenis": "Omnivora",
      "image": "assets/image/tupai.jpg",
      "desc": "Tupai adalah"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: faunaData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailFaunaScreen(
                              nama: faunaData[index]["nama"],
                              jenis: faunaData[index]["jenis"],
                              image: faunaData[index]["image"],
                              desc: faunaData[index]["desc"],
                            )));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${faunaData[index]["image"]}"),
                    fit: BoxFit.cover,
                  )
                ),
                child: Text(
                  "${faunaData[index]["nama"]} - ${faunaData[index]["jenis"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
