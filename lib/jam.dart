import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keungan/component/fom.dart';
import 'package:keungan/setting.dart';
import 'dart:math' as math;
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

class Jam extends StatefulWidget {
  const Jam();

  @override
  State<Jam> createState() => _JamState();
}

class _JamState extends State<Jam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: biru,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnalogClock(
                  dateTime: DateTime.now(),
                  isKeepTime: true,
                  child: const Align(
                    alignment: FractionalOffset(0.5, 0.75),
                    child: Text('GMT+8'),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Masuk",
                                  style: GoogleFonts.roboto(
                                    fontSize: 26,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    textStyle:
                                        Theme.of(context).textTheme.subtitle1,
                                  )),
                              Text("05:00",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    textStyle:
                                        Theme.of(context).textTheme.subtitle1,
                                  )),
                              SizedBox(
                                height: 40,
                              ),
                              loginButton(
                                  "Absen Masuk", birumuda, Colors.black),
                            ],
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Keluar",
                                  style: GoogleFonts.roboto(
                                    fontSize: 26,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    textStyle:
                                        Theme.of(context).textTheme.subtitle1,
                                  )),
                              Text("17:23",
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    textStyle:
                                        Theme.of(context).textTheme.subtitle1,
                                  )),
                              SizedBox(
                                height: 40,
                              ),
                              loginButton(
                                  "Absen Keluar", birumuda, Colors.black),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
