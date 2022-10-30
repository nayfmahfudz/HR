// import 'package:flutter/material.dart';
// import 'User.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:provider/provider.dart';


// const url ="www.";

// class Auth{
//   // bool _auth = false;
//   // bool get auth => _auth;
//   Future<void> ambilauth() async {
//   final response = await http.post(url,
//   body: {

//   },
//   );
//   // final convertdta = json.decode(response.body) as Map<String,dynamic>;
//   // (response.body == 'Login Berhasil')? _auth=true: ;
    

    

//   } 
//   // convertdta.forEach((key,value){
//   //   datauser.add(User(
      
//   //     nama: value['nama'],
//   //     tanggal:value['tanggal'],
//   //     alamat: value['alamat']));


    
//   // );
//   // _user = datauser ;
//   // notifyListeners(); 
//   }



// class Api with ChangeNotifier{
//   List<User> _user=[];
//   List<User> get user => _user;
//   Future<List<User>> loaduserdata() async {
//   final response = await http.get(url);
//   final convertdta = json.decode(response.body) as Map<String,dynamic>;
//   final List<User> datauser=[];
//   if (convertdta == null){
//     print("Data kosong");

//   } 
//   // convertdta.forEach((key,value){
//   //   datauser.add(User(
      
//   //     nama: value['nama'],
//   //     tanggal:value['tanggal'],
//   //     alamat: value['alamat']));


    
//   });
//   _user = datauser ;
//   notifyListeners(); 
//   }
// }

