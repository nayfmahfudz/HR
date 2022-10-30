// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// // import 'package:test2/util/dbhelper.dart';
// import 'dart:convert';
// import 'package:test2/util/dbhelper.dart';
// import 'Iklan.dart';
// import 'package:test2/fom.dart';

// final dbHelper = DBHelper();

// // void insert(User user) async {
// //   Map<String, dynamic> map = user.toJson();
// //   final id = await dbHelper.saveUser(map);
// //   print('data inserted');
// // }

// Future Fetchuser2(BuildContext context) async {
//   final id = await dbHelper.fetchUser();
//   List res = (id as List).map((res) => new User.fromJson(res)).toList();
//   Provider.of<Restapi>(context, listen: false).setuser(res[0]);
//   print('data fetched');
//   return res;
// }

// Future Fetchuser() async {
//   final id = await dbHelper.fetchUser();
//   List res = (id as List).map((res) => new User.fromJson(res)).toList();
//   return res;
// }

// // void query() async {
// //   final allRows = await dbHelper.queryAllRows();
// //   print('query all rows:');
// //   allRows.forEach((row) => print(row));
// // }

// // void delete(String id) async {
// //   // Assuming that the number of rows is the id for the last row.
// //   final id = await dbHelper.queryRowCount();
// //   final rowsDeleted = await dbHelper.delete(id);
// //   print('data deleted  ke $id');
// // }

// Future getberita(BuildContext context) async {
//   final url1 = "https://run.doran.id/public/api/berita?X-API-KEY=doran_data";
//   ;
//   final response = await http.get(url1);
//   List<Berita> list = (json.decode(response.body) as List)
//       .map((res) => new Berita.fromJson(res))
//       .toList();

//   Provider.of<Restapi>(context, listen: false).setberitauser(list);
//   print(list[0]);
// }

// Future getiklan(BuildContext context) async {
//   final url1 =
//       "http://eclub.bukujurnal.com/public/api/iklan?X-API-KEY=doran_data";
//   final response = await http.get(url1);

//   List<Iklan> list = (json.decode(response.body) as List)
//       .map((res) => new Iklan.fromJson(res))
//       .toList();

//   Provider.of<Restapi>(context, listen: false).setiklan(list);
// }

// Future getkomentar(BuildContext context, int i) async {
//   final url1 =
//       "https://run.doran.id/public/api/komentar/getkomentar?X-API-KEY=doran_data&id_agenda=${i}";
//   final response = await http.get(url1);
//   List list = (json.decode(response.body) as List)
//       // .map((res) => new Berita.fromJson(res))
//       .toList();

//   Provider.of<Restapi>(context, listen: false).setkomentar(list);
// }

// Future getagendaikuti(BuildContext context) async {
//   String i = Provider.of<Restapi>(context, listen: false).getuser().id;
//   final url1 =
//       "https://run.doran.id/api/agenda/listjoinagenda?X-API-KEY=doran_data&id_user=$i";
//   final response = await http.get(url1);

//   List<ModelAgenda> list = (json.decode(response.body) as List)
//       .map((res) => new ModelAgenda.fromJson(res))
//       .toList();

//   Provider.of<Restapi>(context, listen: false).setagenda(list);
// }

// Future getagenda(BuildContext context) async {
//   final url1 =
//       "https://run.doran.id/public/api/agenda?X-API-KEY=doran_data&group";
//   final response = await http.get(url1);

//   List<ModelAgenda> list = (json.decode(response.body) as List)
//       .map((res) => new ModelAgenda.fromJson(res))
//       .toList();

//   Provider.of<Restapi>(context, listen: false).setagenda(list);
//   print(list[0]);
// }

// Future postSignUp(BuildContext context, String nama, String email, String pass,
//     String alamat, String nomor) async {
//   final url =
//       "https://run.doran.id/public/api/versi3/register?X-API-KEY=doran_data";
//   final response = await http.post(url, body: {
//     "nama": "$nama",
//     "email": "$email",
//     "password": "$pass",
//     "alamat": "$alamat",
//     "telepon": "$nomor"
//   });
//   final res = json.decode(response.body);

//   print(res.toString());
//   /*
//     I/flutter ( 8036): {result: true, message: Pendaftaran Berhasil., profile: {nama: Nanang K, email: nanank82@gmail.com, alamat: qwerty fddfdfdf, telepon: 11111111, username: nanank82, aktif: 1, password_text: MTIzNDU2, id: 448}}
//   */

//   print(context.toString());

//   if (res["result"] == true) {
//     Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
//     berhasil(context);
//   } else {
//     Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
//     alarm(context);
//   }

//   /*
//       ════════ Exception caught by widgets library ═══════════════════════════════════════════════════════
//     The following assertion was thrown building Builder(dirty, dependencies: [_DefaultInheritedProviderScope<Restapi>]):
//     A non-null String must be provided to a Text widget.
//     'package:flutter/src/widgets/text.dart':
//     Failed assertion: line 285 pos 10: 'data != null'
//   */
// }

// Future getuser(BuildContext context, String email, String pass) async {
//   // final url =
//   //     "https://run.doran.id/public/api/versi3/login?X-API-KEY=doran_data";
//   // final response = await http.post(url, body: {
//   //   "username": email,
//   //   "password": pass,
//   // });
//   // final res = json.decode(response.body);

//   // List<User> list = List();
//   // var profile = res['data']['profile'];
//   // User user = User.fromJson(profile);
//   // list.add(user);

//   // if (res["result"] == true) {
//   // Provider.of<Restapi>(context, listen: false)
//   //     .setuser(User.fromJson(res["data"]["profile"]));

//   // insert(User.fromJson(res["data"]["profile"]));

//   Navigator.of(context).pushReplacement(
//       new MaterialPageRoute(builder: (BuildContext context) => Home()));
//   // } else {
//   //   Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
//   //   alarm(context);
//   // }
// }

// // Future dbgetuser(BuildContext context, String email, String pass) async {
// //     var db=DBHelper();
// //    User user =[email,pass] ;
// //   final response = await   db.saveUser(user);
// //   final res = json.decode(response.body);

// //   if (res["result"] == true) {
// //     // var user = User("SDS");
// //     Provider.of<Restapi>(context, listen: false)
// //         .setuser(User.fromJson(res["data"]["profile"]));
// //     //  await db.saveUser(user);
// //     Navigator.pushReplacementNamed(context, '/Beranda');
// //   } else {
// //     Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
// //     alarm(context);
// //   }
// // }

// Future edituser(BuildContext context, String nama, String email, String alamat,
//     String nomor) async {
//   final id = Provider.of<Restapi>(context, listen: false).getuser().id;
//   final url =
//       "https://run.doran.id/public/api/users/updateprofile?X-API-KEY=doran_data";
//   final response = await http.post(url, body: {
//     "id": "$id",
//     "nama": "$nama",
//     "email": "$email",
//     "alamat": "$alamat",
//     "telepon": "$nomor"
//   });
//   final res = json.decode(response.body);

//   if (res["result"] == true) {
//     Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
//     berhasil(context);
//   } else {
//     Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
//     alarm(context);
//   }
// }

// Future gantipass(BuildContext context, String pass) async {
//   int id = Provider.of<Restapi>(context, listen: false).getuser().id;
//   final url =
//       "https://run.doran.id/public/api/password/changepassword?X-API-KEY=doran_data";
//   final response = await http.post(url,
//       body: json.encode({
//         "id": "$id",
//         "newPassword": "$pass",
//       }));
//   final res = json.decode(response.body);

//   if (res["result"] == true) {
//     Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
//     berhasil(context);
//   } else {
//     Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
//     alarm(context);
//   }
// }

// Future joinagenda(BuildContext context) async {
//   final int idagenda = Provider.of<Restapi>(context, listen: false).getid();
//   final int id = Provider.of<Restapi>(context, listen: false).getuser().id;
//   final url =
//       "https://run.doran.id/public/api/agenda/joinagenda?X-API-KEY=doran_data";
//   final response = await http.post(Uri.encodeFull(url), body: {
//     "id_user": "$id",
//     "id_agenda": "$idagenda",
//   });
//   final res = json.decode(response.body);

//   if (res["result"] == true) {
//     Provider.of<Restapi>(context, listen: false).setmsg(res["message"]);
//     berhasil(context);
//   } else {
//     Provider.of<Restapi>(context, listen: false).setmsgggl(res["message"]);
//     alarm(context);
//   }
// }
