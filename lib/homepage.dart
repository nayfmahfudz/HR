import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:keungan/component/cardoutlet.dart';
import 'package:keungan/component/clippath.dart';
import 'package:keungan/setting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Path getClip(Size size) {
  final path = Path();
  path.lineTo(size.width, 0.0);
  path.lineTo(size.width * 0.75, size.height);
  path.lineTo(size.width * 0.25, size.height);
  path.close();
  return path;
}

class _MyHomePageState extends State<MyHomePage> {
  List jumlahOutlet = [];
  @override
  void initState() {
    login();
    getOutlet();
    super.initState();
  }

  getOutlet() async {
    var dio = Dio();
    final response = await dio.post(
        'http://test-tech.api.jtisrv.com/md/public/API/Auth/initData',
        data: {"act": "initData", "outlet_id": 1});
    print(response.data);
    setState(() {
      jumlahOutlet.add(response.data['data']["outlet"]);
    });

    print(jumlahOutlet);

    return true;
  }

  login() async {
    var dio = Dio();
    final response = await dio.post(
        'http://test-tech.api.jtisrv.com/md/public/API/Auth',
        data: {"act": "LOGIN", "un": "admin@admin.com", "up": "admin"});
    print(response.data['status']["login"]);
    if (response.data['status']["login"] == true) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          'role', json.encode(response.data["status"]['role']));
      print(response.data["status"]['role']);
      return true;
    } else {
      return false;
    }
  }

  String selected = "HOME";
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: Center(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        MediaQuery.of(context).size.width / 6,
                                        0,
                                        0,
                                        8),
                                    child: Text('APP KEUANGAN',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          color: biru,
                                          fontWeight: FontWeight.w800,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16.0, 0, 16, 0),
                                  child: Image.asset(
                                      "assets/Button_Notifikasi.png",
                                      height: 50,
                                      fit: BoxFit.contain),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width:
                                    MediaQuery.of(context).size.height * 0.055,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = "HOME";
                                      });
                                    },
                                    child: selected == "HOME"
                                        ? Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Home_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Home',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Home_Tidak_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Home',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )),
                              )),
                              Expanded(
                                  child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width:
                                    MediaQuery.of(context).size.height * 0.055,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = "TRANSAKSI";
                                      });
                                    },
                                    child: selected == "TRANSAKSI"
                                        ? Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Transaksi_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Transaksi',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Transaksi_Tidak_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Transaksi',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )),
                              )),
                              Expanded(
                                  child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width:
                                    MediaQuery.of(context).size.height * 0.055,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = "LAPORAN";
                                      });
                                    },
                                    child: selected == "LAPORAN"
                                        ? Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Laporan_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Laporan',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Laporan_Tidak_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Laporan',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )),
                              )),
                              Expanded(
                                  child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width:
                                    MediaQuery.of(context).size.height * 0.055,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selected = "TOOLS";
                                      });
                                    },
                                    child: selected == "TOOLS"
                                        ? Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Tools_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Tools',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              Image.asset(
                                                  "assets/Button_Tools_Tidak_Aktif.png",
                                                  fit: BoxFit.contain),
                                              Text('Tools',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    color: biru,
                                                    fontWeight: FontWeight.w400,
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .subtitle1,
                                                  )),
                                            ],
                                          )),
                              )),
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0,
                                style: BorderStyle.none,
                                color: putih.withOpacity(0),
                              ),
                              color: putih),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color: putih.withOpacity(0),
                                      ),
                                      color: biru)),
                              Align(
                                alignment: Alignment.topCenter,
                                child: ClipPath(
                                  clipper: TsClip1(),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 0,
                                          style: BorderStyle.none,
                                          color: putih.withOpacity(0),
                                        ),
                                        color: putih),
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    width: 105,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0.0, 0, 0, 6),
                                        child: Image.asset(
                                            "assets/Button_Refresh.png",
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: ListView.builder(
            physics: const ScrollPhysics(),
            itemCount: jumlahOutlet.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, i) => Cardoutlet(jumlahOutlet[i])));
  }
}
