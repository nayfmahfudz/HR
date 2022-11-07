import 'package:flutter/material.dart';
// import 'package:test2/util/dbhelper.dart';
// import 'form.dart';
// import 'fom.dart';
// import 'provider/Restapi.dart';
import 'component/fom.dart';
import 'component/sizeConfig.dart';
import 'util/dbhelper.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  var namaController = new TextEditingController();
  var passwordController = new TextEditingController();
  var hide = true;
  @override
  Widget build(BuildContext context) {
    print(MediaQueryData.fromWindow(WidgetsBinding.instance.window)
        .size
        .shortestSide);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Flexible(flex: getDeviceType() ?? 1, child: Container()),
            Expanded(
              flex: getDeviceTypeContent() ?? 3,
              child: Center(
                child: Form(
                    key: formKey,
                    child: ListView(
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 30),
                      children: <Widget>[
                        // logo,
                        SizedBox(height: 24.0),
                        nama(namaController),
                        SizedBox(height: 8.0),
                        password(passwordController, hide),
                        SizedBox(height: 24.0),
                        loginButton(formKey),
                        SizedBox(height: 8.0),
                        text("Belum punya akun?", () {}),
                      ],
                    )),
              ),
            ),
            Flexible(flex: getDeviceType() ?? 1, child: Container()),
          ],
        ));
  }
}
