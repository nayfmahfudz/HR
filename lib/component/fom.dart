// import 'package:flutter/material.dart';
// // import 'package:test2/util/dbhelper.dart';
// // import 'Iconbottom.dart';
// // import 'model/User.dart';
// // import 'model/apirequest.dart';
// // import 'provider/Restapi.dart';
// // import 'package:provider/provider.dart';
// // import 'Login.dart';
// // import 'util/dbhelper.dart' as db;

// // final login = LoginState();
// final formKey = GlobalKey<FormState>();
// final formKey1 = GlobalKey<FormState>();
// final formKey2 = GlobalKey<FormState>();
// final formKey3 = GlobalKey<FormState>();

// // String validemail(String value) {
// //   // Pattern pattern =
// //   //     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
// //   // RegExp regex = new RegExp(pattern);
// // //   if (!regex.hasMatch(value)) return 'Masukan Email Valid';
// // //   else return false
// // }

// String validenama(String value) {
//   if (value.length < 3)
//     return 'Nama Harus diisi minimal 3 kata';
//   else
//     return "";
// }

// String validpassgt(String value) {
//   if (value.length < 5) return 'Password harus diisi Minimal 5 ';
//   if (value != passinputcontroller.text)
//     return 'Password Salah ';
//   else
//     return "";
// }

// String validpassbr(String value) {
//   if (value.length < 5) return 'Password harus diisi Minimal 5 ';
//   if (value != passvrinputcontroller.text)
//     return 'Password Tidak Sama ';
//   else
//     return "";
// }

// String validpassvr(String value) {
//   if (value.length < 5) return 'Password harus diisi Minimal 5 ';
//   if (value != passbrinputcontroller.text)
//     return 'Password Tidak Sama ';
//   else
//     return "";
// }

// String validpass(String value) {
//   if (value.length < 5)
//     return 'Password harus diisi Minimal 5 ';
//   else
//     return "";
// }

// String validalamat(String value) {
//   if (value.length < 10)
//     return 'Mohon alamat diisi dengan lengkap';
//   else
//     return "";
// }

// String validnomor(String value) {
//   if (value.length < 8)
//     return 'Mohon Nomor diisi dengan lengkap';
//   else
//     return "";
// }

// bool autoValidate = false;
// String _nama="";
// String _email="";
// String _pass="";
// String _alamat="";
// String _nomor="";
// String _passbr="";
// String _passver="";
// // var pass =int.parse(_passver);

// var teks = Text(
//   "Pendaftaran",
//   textAlign: TextAlign.center,
//   style: TextStyle(color: Color.fromRGBO(237, 155, 12, 1), fontSize: 40),
// );

// var nama = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           controller: namainputcontroller,
//           // validator: validenama,
//           // onSaved: ( value) {
//           //   _nama = value;
//           // },
//           autofocus: false,
//           decoration: InputDecoration(
//             suffixIcon: IconButton(icon: Icon(Icons.account_box)),
//             hintText: 'Username',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//           ),
//         )));

// var passwordbaru = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
//               validator: validpassbr,
//               autofocus: false,
//               onSaved: (value) {
//                 _passbr = value;
//               },
//               controller: passbrinputcontroller,
//               obscureText: passwordVisible ? true : false,
//               decoration: InputDecoration(
//                 hintText: ' Password',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       passwordVisible ? Icons.visibility : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         passwordVisible = !passwordVisible;
//                       });
//                     }),
//               )),
//         ));
// var passwordver = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: Container(
//             child: TextFormField(
//                 validator: validpassvr,
//                 autofocus: false,
//                 onSaved: (value) {
//                   _passver = value;
//                 },
//                 controller: passvrinputcontroller,
//                 obscureText: passwordVisible ? true : false,
//                 decoration: InputDecoration(
//                   hintText: ' Password',
//                   contentPadding: EdgeInsets.all(20),
//                   border: OutlineInputBorder(),
//                   suffixIcon: IconButton(
//                       icon: Icon(
//                         passwordVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           passwordVisible = !passwordVisible;
//                         });
//                       }),
//                 )),
//           ),
//         ));
// var passwordlama = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: Container(
//             child: TextFormField(
//                 validator: validpassgt,
//                 autofocus: false,
//                 controller: passcontroller,
//                 obscureText: passwordVisible ? true : false,
//                 decoration: InputDecoration(
//                   hintText: ' Password',
//                   contentPadding: EdgeInsets.all(20),
//                   border: OutlineInputBorder(),
//                   suffixIcon: IconButton(
//                       icon: Icon(
//                         passwordVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           passwordVisible = !passwordVisible;
//                         });
//                       }),
//                 )),
//           ),
//         ));
// var alamat = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           controller: alamatinputcontroller,
//           validator: validalamat,
//           onSaved: (String value) {
//             _alamat = value;
//           },
//           autofocus: false,
//           decoration: InputDecoration(
//             suffixIcon: IconButton(
//               icon: Icon(Icons.home),
//             ),
//             hintText: 'Alamat ',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//           ),
//         )));
// var nomor = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           keyboardType: TextInputType.phone,
//           controller: nomorinputcontroller,
//           validator: validnomor,
//           autofocus: false,
//           decoration: InputDecoration(
//             hintText: ' Nomor Telepon',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//             suffixIcon: IconButton(icon: Icon(Icons.phone_android)),
//           ),
//         )));
// void gberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Gagal Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// void jberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Berhasil Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// void uberhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Berhasil Join",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[Center(child: okButton)],
//           ),
//         ));
// int switchControl;

// String hasil;

// void berhasil(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               Provider.of<Restapi>(context).getmsg(),
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[okButton],
//           ),
//         ));
// void keluar(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               "Mau Keluar?",
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[
//               Row(
//                 children: <Widget>[
//                   keluaryaButton,
//                   SizedBox(
//                     width: 20,
//                   ),
//                   keluartidakButton
//                 ],
//               )
//             ],
//           ),
//         ));

// alarm(BuildContext context) => showDialog(
//     context: context,
//     builder: (context) => Center(
//           child: AlertDialog(
//             content: Text(
//               Provider.of<Restapi>(context).getmsgggl(),
//               textAlign: TextAlign.center,
//               style:
//                   TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//             ),
//             elevation: 3,
// //                actionsPadding: EdgeInsets.only(right: 28),

//             actions: <Widget>[okButton],
//           ),
//         ));
// var keluaryaButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 100.0,
//       height: 42.0,
//       onPressed: () {
//         dbHelper.deleteUser();
//         Navigator.pushNamed(context, "/Login");
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'Ya',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// var keluartidakButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 100.0,
//       height: 42.0,
//       onPressed: () {
//         Navigator.pop(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'Tidak',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// var okButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         Navigator.pop(context);
//         Navigator.pop(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text(
//         'OK',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     ),
//   ),
// );
// // var gantiButton = Builder(
// //     builder: (BuildContext context) => Padding(
// //           padding: EdgeInsets.only(left: 30),
// //           child: Align(
// //             alignment: Alignment.bottomCenter,
// //             child: SizedBox(
// //               width: MediaQuery.of(context).size.width,
// //               child: RaisedButton(
// //                 // padding: EdgeInsets.all(10),
// //                 onPressed: () {
// //                   if (formKey2.currentState.validate()) {
// //                     formKey2.currentState.save();
// //                     gantipass(context, passvrinputcontroller.text);
// //                   } else {
// //                     StatefulBuilder(builder: (context, setState) {
// //                       setState(() {
// //                         autoValidate = true;
// //                       });
// //                     });
// //                   }
// //                 },
// //                 child: const Text('Verifikasi', style: TextStyle(fontSize: 20)),
// //                 color: Color.fromRGBO(237, 155, 12, 1),
// //                 textColor: Colors.white,
// //                 // elevation: 5,
// //               ),
// //             ),
// //           ),
// //           // ),
// //         ));

// //    Material(
// //     borderRadius: BorderRadius.circular(60.0),
// //     shadowColor: Color.fromRGBO(237, 155, 12, 1),
// //     // elevation: 5.0,
// //     child: MaterialButton(
// //         minWidth: 200.0,
// //         height: 42.0,
// //         onPressed: () {

// //   if (formKey2.currentState.validate()) {
// //     formKey2.currentState.save();
// //     gantipass(context, _passver);
// //   } else {
// //     StatefulBuilder(builder: (context, setState) {
// //       setState(() {
// //         autoValidate = true;
// //       });
// //     });
// //   }},
// //  color: Color.fromRGBO(237, 155, 12, 1),
// //       child: Text('Verifikasi', style: TextStyle(color: Colors.white)),

// //         ),
// //   ),
// // );
// var joinButton = Builder(
//   builder: (BuildContext context) => Material(
//     borderRadius: BorderRadius.circular(60.0),
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         joinagenda(context);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Sign In', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// var signButton = Builder(
//   builder: (BuildContext context) => Material(
//     borderRadius: BorderRadius.circular(60.0),
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         if (formKey1.currentState.validate()) {
//           formKey1.currentState.save();
//           postSignUp(
//               context,
//               namainputcontroller.text,
//               emailinputcontroller.text,
//               passinputcontroller.text,
//               alamatinputcontroller.text,
//               nomorinputcontroller.text);
//         } else {
//           StatefulBuilder(builder: (context, setState) {
//             setState(() {
//               autoValidate = true;
//             });
//           });
//         }
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Sign Up', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// final email = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//             child: TextFormField(
//           validator: validemail,
//           onSaved: (String value) {
//             _email = value;
//           },
//           controller: emailinputcontroller,
//           keyboardType: TextInputType.emailAddress,
//           autofocus: false,
//           // initialValue: "Masukan Username atau Email",
//           decoration: InputDecoration(
//             suffixIcon: IconButton(icon: Icon(Icons.keyboard)),
//             hintText: 'Email',
//             contentPadding: EdgeInsets.all(20),
//             border: Provider.of<Restapi>(context).getboolean()
//                 ? OutlineInputBorder()
//                 : null,
//           ),
//         )));
// // final

// bool passwordVisible = true;

// final password = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
//               validator: validpass,
//               autofocus: false,
//               onSaved: (value) {
//                 _pass = value;
//               },
//               controller: passinputcontroller,
//               obscureText: passwordVisible ? true : false,
//               decoration: InputDecoration(
//                 hintText: ' Password',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       passwordVisible ? Icons.visibility : Icons.visibility_off,
//                     ),
//                     onPressed: () {
//                       setState(() {
//                         passwordVisible = !passwordVisible;
//                       });
//                     }),
//               )),
//         ));

// final loginButton = Builder(
//   builder: (BuildContext context) => Material(
//     borderRadius: BorderRadius.circular(60.0),
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         if (formKey.currentState.validate()) {
//           formKey.currentState.save();
//           getuser(context, _nama, _pass);
//         }
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Log In', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// // final belum = Builder(
// //     builder: (BuildContext context) => FlatButton(
// //           child: Text(
// //             'Belum punya akun?',
// //             style: TextStyle(color: Colors.black54),
// //           ),
// //           onPressed: () {
// //             Navigator.pushNamed(context, '/Form');
// //           },
// //         ));

// final editButton = Builder(
//   builder: (BuildContext context) => Material(
//     shadowColor: Color.fromRGBO(237, 155, 12, 1),
//     // elevation: 5.0,
//     child: MaterialButton(
//       minWidth: 200.0,
//       height: 42.0,
//       onPressed: () {
//         edituser(context, namainputcontroller.text, emailinputcontroller.text,
//             alamatinputcontroller.text, nomorinputcontroller.text);
//       },
//       color: Color.fromRGBO(237, 155, 12, 1),
//       child: Text('Edit', style: TextStyle(color: Colors.white)),
//     ),
//   ),
// );

// // void settingModalBottomSheet(BuildContext context) => showModalBottomSheet(
// //     context: context,
// //     builder: (context) {
// //       return Iconbottom();
// //     });

// var searchInputLabel = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
// //          validator: validKeyword,
//               autofocus: false,
// //          onSaved: (value) {
// //            _keyword = value;
// //          },
// //          controller: keywordInputController,
//               onTap: () {
//                 Navigator.of(context).pushNamed("/Search");
//               },
//               decoration: InputDecoration(
//                 hintText: ' Search...',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       Icons.search,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("/Search");
//                     }),
//               )),
//         ));

// var searchInput = StatefulBuilder(
//     builder: (BuildContext context, StateSetter setState) => Container(
//           child: TextFormField(
// //          validator: validKeyword,
//               autofocus: false,
// //          onSaved: (value) {
// //            _keyword = value;
// //          },
// //          controller: keywordInputController,
//               onTap: () {
//                 Navigator.of(context).pushNamed("/Search");
//               },
//               decoration: InputDecoration(
//                 hintText: ' Search...',
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                     icon: Icon(
//                       Icons.search,
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pushNamed("/Search");
//                     }),
//               )),
//         ));

// //String validKeyword(String value) {
// //  if (value.length < 5) return 'Minimum keyword char is 3';
// //}

// var emailinputcontroller = TextEditingController();
// var passinputcontroller = new TextEditingController();
// // var emailcontroller=new TextEditingController();
// var passcontroller = new TextEditingController();
// var namainputcontroller = new TextEditingController();
// var nomorinputcontroller = new TextEditingController();
// var alamatinputcontroller = new TextEditingController();
// var passbrinputcontroller = new TextEditingController();
// var passvrinputcontroller = new TextEditingController();
// //var keywordInputController = new TextEditingController();