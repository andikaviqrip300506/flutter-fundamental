import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, tiket, tglhir, tempat, gambar;
  final int totalHarga, hargaPerTiket;
  OutputFormScreen(
      {Key? key,
      required this.nama,
      required this.tiket,
      required this.tglhir,
      required this.tempat,
      required this.gambar,
      required this.hargaPerTiket,
      required this.totalHarga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Detail Pemesanan", style: TextStyle(color: Colors.white),),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                gambar,
                width: double.infinity,
                height: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "nama : $nama",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Container(
                child: Text("tiket : $tiket",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("harga per tiket : $hargaPerTiket",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("tanggal berangkat : $tglhir",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                child: Text("tempat : $tempat",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                  child: Text("total: $totalHarga",
                      style: TextStyle(color: Colors.black, fontSize: 15))),
            ],
          ),
        ),
      ),
    );
  }
}
