import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:HR/BLOCS/api.dart';
import 'package:HR/setting.dart';
import 'component/fom.dart';
import 'component/sizeConfig.dart';
import 'homepage.dart';
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
            Expanded(flex: getDeviceType() ?? 1, child: Container()),
            Expanded(
              flex: getDeviceTypeContent() ?? 3,
              child: Center(
                child: Form(
                    key: formKey,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: tinggiAs(context) * 30),
                      children: <Widget>[
                        // logo,
                        SizedBox(height: 24.0),
                        nama(namaController, context),
                        SizedBox(height: 8.0),
                        password(passwordController, hide),
                        SizedBox(height: 24.0),
                        GestureDetector(
                            onTap: () {
                              if (formKey.currentState.validate()) {
                                context.read<APIBloc>().add(APILogin({
                                      "password": passwordController.text,
                                      "username": namaController.text
                                    }));
                                navigateToNextScreen(context, Menu());
                              }
                            },
                            child: loginButton('Log In', biru, putih)),
                        SizedBox(height: 8.0),
                        text("Belum punya akun?", () {}),
                      ],
                    )),
              ),
            ),
            Expanded(flex: getDeviceType() ?? 1, child: Container()),
          ],
        ));
  }
}
