import 'package:flutter/material.dart';
import 'package:project_flutter/helpers/size_helper.dart';

class DetailFaunaScreen extends StatelessWidget {
  final String nama;
  final String jenis;
  final String image;
  final String desc;

  DetailFaunaScreen(
      {required this.nama,
      required this.jenis,
      required this.image,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        centerTitle: true,
        title: Text(
          "Fauna Detail",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/image/"),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "$nama - $jenis",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: displayWidth(context) * 0.95,
                      height: 360,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.shade900,
                            Colors.grey.shade300,
                            Colors.grey.shade800,
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Hai",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'DancingScript',
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
