import 'package:date_time_picker/date_time_picker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:keungan/setting.dart';

class Kurs extends StatefulWidget {
  Kurs({Key? key}) : super(key: key);

  @override
  State<Kurs> createState() => _KursState();
}

class _KursState extends State<Kurs> {
  List listOutlet = ["Outlet 1", "Outlet 2", "Outlet 3", "Outlet 4"];
  List uang = ["IDR", "USD", "EUR", "SGD"];
  String? selected;
  String? selectedUang;
  List foto = [];
  TextEditingController keterangan = TextEditingController();
  TextEditingController uangController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selected = listOutlet[0];
    selectedUang = uang[0];
  }
// getOutlet() async {
//     var dio = Dio();
//     final response = await dio.post(
//         'http://test-tech.api.jtisrv.com/md/public/API/Auth/initData',
//         data: {"act": "initData", "outlet_id": 1});

//     return true;
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
            0.25), // here the desired height
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0,
                  style: BorderStyle.none,
                  color: putih.withOpacity(0),
                ),
                color: putih),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: biru,
                          )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: Text('Pindah Kurs',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: biru,
                                fontWeight: FontWeight.w800,
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 28.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.width / 10,
                        child: DropdownButtonFormField(
                          iconEnabledColor: biru,
                          iconDisabledColor: biru,
                          style: Theme.of(context).textTheme.subtitle1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(right: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: birumuda, width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: birumuda, width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            filled: true,
                            fillColor: birumuda,
                          ),
                          validator: (value) =>
                              value == null ? "Pilih Outlet" : null,
                          dropdownColor: Colors.white,
                          value: selected,
                          isExpanded: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              selected = newValue;
                            });
                          },
                          items: listOutlet.map(
                            (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Center(
                                    child: Text(val,
                                        style: GoogleFonts.roboto(
                                          fontSize: 16,
                                          color: biru,
                                          fontWeight: FontWeight.w500,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ))),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: ListView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text('Dari',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: putih,
                  fontWeight: FontWeight.w800,
                  textStyle: Theme.of(context).textTheme.subtitle1,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: putih,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: TextFormField(
                        controller: uangController,
                        onFieldSubmitted: (v) {
                          var hasil = v.replaceAll('IDR', "");
                          final formattedPrice =
                              NumberFormat.currency(locale: 'IDR')
                                  .format(double.parse(hasil));
                          uangController.value = TextEditingValue(
                            text: formattedPrice,
                            selection: TextSelection.collapsed(
                                offset: formattedPrice.length),
                          );
                        },
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number),
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: DropdownButtonFormField(
                      style: Theme.of(context).textTheme.subtitle1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: birumuda, width: 1),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: putih,
                      ),
                      validator: (value) => value == null ? "Pilih Uang" : null,
                      dropdownColor: Colors.white,
                      value: selectedUang,
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedUang = newValue;
                        });
                      },
                      items: uang.map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/uang.png",
                                    height: 10, fit: BoxFit.contain),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(val,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: biru,
                                      fontWeight: FontWeight.w500,
                                      textStyle:
                                          Theme.of(context).textTheme.subtitle1,
                                    )),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text('Ke',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  color: putih,
                  fontWeight: FontWeight.w800,
                  textStyle: Theme.of(context).textTheme.subtitle1,
                )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: putih,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: TextFormField(
                        controller: uangController,
                        onFieldSubmitted: (v) {
                          var hasil = v.replaceAll('IDR', "");
                          final formattedPrice =
                              NumberFormat.currency(locale: 'IDR')
                                  .format(double.parse(hasil));
                          uangController.value = TextEditingValue(
                            text: formattedPrice,
                            selection: TextSelection.collapsed(
                                offset: formattedPrice.length),
                          );
                        },
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.number),
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: DropdownButtonFormField(
                      style: Theme.of(context).textTheme.subtitle1,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: birumuda, width: 1),
                          // borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: putih,
                      ),
                      validator: (value) => value == null ? "Pilih Uang" : null,
                      dropdownColor: Colors.white,
                      value: selectedUang,
                      isExpanded: true,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedUang = newValue;
                        });
                      },
                      items: uang.map(
                        (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/uang.png",
                                    height: 10, fit: BoxFit.contain),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(val,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: biru,
                                      fontWeight: FontWeight.w500,
                                      textStyle:
                                          Theme.of(context).textTheme.subtitle1,
                                    )),
                              ],
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
