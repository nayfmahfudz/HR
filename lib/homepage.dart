import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:keungan/component/cardoutlet.dart';
import 'package:keungan/component/clippath.dart';
import 'package:keungan/setting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'component/fom.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

Path getClip(Size size) {
  final path = Path();
  path.lineTo(size.width, 0.0);
  path.lineTo(size.width * 0.75, size.height);
  path.lineTo(size.width * 0.25, size.height);
  path.close();
  return path;
}

class _MenuState extends State<Menu> {
  List jumlahOutlet = [];
  @override
  void initState() {
    login();
    getOutlet();
    super.initState();
  }

  getOutlet() async {
    var dio = Dio();
    // final response = await dio.post(
    //     'http://test-tech.api.jtisrv.com/md/public/API/Auth/initData',
    //     data: {"act": "initData", "outlet_id": 1});
    // print(response.data);
    // setState(() {
    //   jumlahOutlet.add(response.data['data']["outlet"]);
    // });

    print(jumlahOutlet);

    return true;
  }

  login() async {
    var dio = Dio();
    // final response = await dio.post(
    //     'http://test-tech.api.jtisrv.com/md/public/API/Auth',
    //     data: {"act": "LOGIN", "un": "admin@admin.com", "up": "admin"});
    // print(response.data['status']["login"]);
    // if (response.data['status']["login"] == true) {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   await prefs.setString(
    //       'role', json.encode(response.data["status"]['role']));
    //   print(response.data["status"]['role']);
    //   return true;
    // } else {
    //   return false;
    // }
  }

  String selected = "Home";
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30),
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
                              ),
                              Image.asset("assets/Button_Notifikasi.png",
                                  height: 50, fit: BoxFit.contain),
                              SizedBox(
                                width: 30,
                              )
                            ],
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
                              ReturnValueToParent(() {
                                setState(() {
                                  selected = "Home";
                                });
                              }, selected, "assets/Button_Home_Aktif.png",
                                  "assets/Button_Home_Tidak_Aktif.png", "Home"),
                              ReturnValueToParent(() {
                                setState(() {
                                  selected = "Transaksi";
                                });
                              }, selected, "assets/Button_Home_Aktif.png",
                                  "assets/Button_Home_Tidak_Aktif.png", "Home"),
                              // MenuUtama(
                              //     context,
                              //     selected,
                              //     "assets/Button_Home_Aktif.png",
                              //     "assets/Button_Home_Tidak_Aktif.png",
                              //     "Home", () {
                              //   setState(() {
                              //     selected = "Home";
                              //   });
                              // }),
                              // MenuUtama(
                              //     context,
                              //     selected,
                              //     "assets/Button_Transaksi_Aktif.png",
                              //     "assets/Button_Transaksi_Tidak_Aktif.png",
                              //     "Transaksi", () {
                              //   setState(() {
                              //     selected = "Transaksi";
                              //   });
                              // }),
                              // MenuUtama(
                              //     context,
                              //     selected,
                              //     "assets/Button_Laporan_Aktif.png",
                              //     "assets/Button_Laporan_Tidak_Aktif.png",
                              //     "Laporan", () {
                              //   setState(() {
                              //     selected = "Laporan";
                              //   });
                              // }),
                              // MenuUtama(
                              //     context,
                              //     selected,
                              //     "assets/Button_Tools_Aktif.png",
                              //     "assets/Button_Tools_Tidak_Aktif.png",
                              //     "Tools", () {
                              //   setState(() {
                              //     selected = "Tools";
                              //   });
                              // }),
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
