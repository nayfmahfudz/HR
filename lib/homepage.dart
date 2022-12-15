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
        appBar: appBar(),
        body: Stack(children: [
          Expanded(
              child: Container(
            color: Colors.red,
          ))
        ]));
  }

  PreferredSizeWidget appBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
            0.46), // here the desired height
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                style: BorderStyle.none,
                color: putih.withOpacity(0),
              ),
              color: putih),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text('APP KEUANGAN',
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: biru,
                                    fontWeight: FontWeight.w800,
                                    textStyle:
                                        Theme.of(context).textTheme.subtitle1,
                                  )),
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
              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      //     child: CircleAvatar(
                                      //   radius: 30.0,
                                      //   backgroundImage: NetworkImage(
                                      //       'https://via.placeholder.com/151',),
                                      //   backgroundColor: Colors.transparent,
                                      // )
                                      ),
                                ),
                                Expanded(
                                    child: Container(
                                        child: Center(child: Text("task"))))
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("NAMA"),
                                      Text("JABATAN"),
                                      SizedBox(
                                        height: 16,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Check In",
                                            ),
                                            Text("JAM")
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Check Out",
                                              textAlign: TextAlign.right,
                                            ),
                                            Text("JAM")
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                ),
                              ],
                            ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          width: 0,
                          style: BorderStyle.none,
                          color: putih.withOpacity(0),
                        ),
                        color: birumuda),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
