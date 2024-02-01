import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_flutter/helpers/size_helper.dart';
import 'package:project_flutter/latihan/form/output_screen.dart';

class FaunaForm extends StatefulWidget {
  const FaunaForm({super.key});

  @override
  State<FaunaForm> createState() => _FaunaFormState();
}

class _FaunaFormState extends State<FaunaForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskrisikan variabel input

  TextEditingController namaController = TextEditingController();
  TextEditingController tiketController = TextEditingController();
  TextEditingController tglhrController = TextEditingController();
  String _pilihTempat = "";
  String _gambarTempat = '';

  final List<String> tempat = [
    "Zoo Bandung",
    "Zoo Jakarta",
    "Zoo Surabaya",
    "Zoo Indramayu",
    "Zoo Bekasi"
  ];

  final Map<String, int> hargaTempat = {
    "Zoo Bandung": 50000,
    "Zoo Jakarta": 60000,
    "Zoo Surabaya": 55000,
    "Zoo Indramayu": 45000,
    "Zoo Bekasi": 48000,
  };

  final Map<String, String> gambarTempat = {
    "Zoo Bandung": 'assets/image/zoo.jpg',
    "Zoo Jakarta": 'assets/image/harimau.jpg',
    "Zoo Surabaya": 'assets/image/kucing.jpg',
    "Zoo Indramayu": 'assets/image/tupai.jpg',
    "Zoo Bekasi": 'assets/image/wolf.jpg',
  };

  void initState() {
    tglhrController.text = '';
     _gambarTempat =
    gambarTempat[tempat[0]]!; // Inisialisasi dengan gambar tempat pertama
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Form Fauna"),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Input Nama";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: tiketController,
                          decoration: InputDecoration(
                            hintText: "Jumlah Tiket",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Input Tiket";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: tglhrController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Berangkat",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Input Tanggal Berangkat";
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            if (pickedDate != null) {
                              String tgl =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglhrController.text = tgl;
                              });
                            } else {
                              print("tanggal tidak dipilih");
                            }
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              hintText: "Tempat",
                              labelText: "Pilih Tempat",
                              border: OutlineInputBorder()),
                          items: tempat.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihTempat = newValue!;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: Colors.white60,
                                ),
                              ),
                            )),
                            child: Text("Simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String tiket = tiketController.text;
      String tempat = _pilihTempat;
      String gambar = _gambarTempat;
      String tglhir = tglhrController.text;

      int jumlahTiket = int.tryParse(tiket) ?? 0;
      int hargaPerTiket = hargaTempat[tempat] ?? 0;
      int totalHarga = jumlahTiket * hargaPerTiket;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: nama,
            tiket: tiket,
            hargaPerTiket: hargaPerTiket,
            tglhir: tglhir,
            gambar: gambar,
            tempat: tempat,
            totalHarga: totalHarga,
          ),
        ),
      );
    }
  }
}
