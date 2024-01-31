import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_flutter/helpers/size_helper.dart';
import 'package:project_flutter/latihan/form/output_screen.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskrisikan variabel input

  TextEditingController namaController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController tglhrController = TextEditingController();
  String _pilihAgama = "";

  final List<String> agama = [
    "Islam",
    "Protestan",
    "Katholik",
    "Budha",
    "Atheis"
  ];

  void initState() {
    tglhrController.text = '';
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
                        Text("Form Biodata"),
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
                          controller: tglhrController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Lahir",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Input Tanggal Lahir";
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
                                  DateFormat('yyyy-mm-dd').format(pickedDate);
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
                              hintText: "Agama",
                              labelText: "Pilih Agama",
                              border: OutlineInputBorder()),
                          items: agama.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihAgama = newValue!;
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
      String jk = jkController.text;
      String agama = _pilihAgama;
      String tglhir = tglhrController.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputFormScreen(nama: nama, jk: jk, tglhir: tglhir, agama: agama) 
            )
        );
    }
  }
}
