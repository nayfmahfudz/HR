import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:HR/Login.dart';
import 'package:HR/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:HR/homepage.dart';

import 'BLOCS/api.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await initializeService();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<APIBloc>(create: (BuildContext context) => APIBloc()),
  ], child: const MyApp()));
}

// Future<void> initializeService() async {
//   final service = FlutterBackgroundService();
//   await service.configure(
//     androidConfiguration: AndroidConfiguration(
//       // this will executed when app is in foreground or background in separated isolate
//       onStart: onStart,

//       // auto start service
//       autoStart: true,
//       isForegroundMode: true,
//     ),
//     iosConfiguration: IosConfiguration(
//       // auto start service
//       autoStart: true,

//       // this will executed when app is in foreground in separated isolate
//       onForeground: onStart,

//       // you have to enable background fetch capability on xcode project
//       onBackground: () {},
//     ),
//   );
//   service.start();
// }

Future sentNama() async {
  var dio = Dio();
  // final response = await dio.post(    'http://test-tech.api.jtisrv.com/md/public/API/BgService/Hit',
  //     data: {
  //       "nama": "Mochammad naeef",
  //       "email": "mochammadnayf@gmail.com",
  //       "nohp": "082132106565"
  //     });
  // return {
  //   "nama": "Mochammad naeef",
  //   "email": "mochammadnayf@gmail.com",
  //   "nohp": "082132106565"
  // };
  //
}
// to ensure this executed
// run app from xcode, then from xcode menu, select Simulate Background Fetch

void onStart(service) async {
  // bring to foreground
  Timer.periodic(const Duration(seconds: 30), (timer) async {
    // await sentNama().then((a) {
    //   print(a.toString());
    // });
  });
}

class MyApp extends StatefulWidget {
  const MyApp();
// service.startService();
  @override
  State<MyApp> createState() => _MyAppState();
}

@override
class _MyAppState extends State<MyApp> {
  initState() {
    super.initState();
  }

  Future splashscreen() async {
    return await Future.delayed(Duration(seconds: 6), () {
      return true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HRD',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: splashscreen(),
          builder: ((context, snapshot) {
            if (snapshot.data == true) {
              return Login();
            } else {
              return SplashScreen();
            }
          }),
        ));
  }
}
