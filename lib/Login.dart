import 'package:flutter/material.dart';
// import 'package:test2/util/dbhelper.dart';
// import 'form.dart';
// import 'fom.dart';
// import 'provider/Restapi.dart';
import 'util/dbhelper.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  // void toggle() {
  //   setState(() {
  //     Provider.of<Restapi>(context).setboolean(true);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final logo = Image.asset(
    //   "gambar/dorun-orange-2.png",
    //   height: 100,
    //   width: 300,
    // );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
              // key: formKey,
              child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              // logo,
              SizedBox(height: 24.0),
              // nama,
              SizedBox(height: 8.0),
              // password,
              SizedBox(height: 24.0),
              // loginButton,
              SizedBox(height: 8.0),
              // belum,
            ],
          )),
        ));
  }
}
