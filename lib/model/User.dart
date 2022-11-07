// import 'package:flutter/material.dart';

// class Loginapi {
//   Loginapi({this.result, this.data});
//   bool result;
//   User data;
//   String toString() {
//     return '{result: $result,data: $data ';
//   }

//   factory Loginapi.fromJson(Map<String, dynamic> json) {
//     return Loginapi(
//       result: json["result"],
//       data: User.fromJson(json["profile"]),
//     );
//   }
// }

// class User {
//   User(
//       {this.id,
//       this.nama,
//       this.password,
//       this.email,
//       this.image,
//       this.telpon,
//       this.alamat,
//       this.aktif,
//       this.id_provinsi,
//       this.id_kecamatan,
//       this.id_kabupaten,
//       this.username});
//   int id;
//   String nama;
//   String password;
//   String email;
//   String image;
//   String id_provinsi;
//   String username;
//   String id_kabupaten;
//   String id_kecamatan;
//   String aktif;
//   String alamat;
//   String telpon;

//   List<User> columns = [];

//   String toString() {
//     return 'User{nama: $nama, id: $id,password: $password ,email: $email , image:$image, alamat: $alamat ,telpon: $telpon }';
//   }

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json["id"],
//       nama: json["nama"],
//       username: json["username"],
//       password: json["password_text"],
//       email: json["email"],
//       alamat: json["alamat"],
//       telpon: json["telepon"],
//       image: json["image"],
//       aktif: json["aktif"].toString(),
//       id_provinsi: json["id_provinsi"].toString(),
//       id_kabupaten: json["id_kabupaten"].toString(),
//       id_kecamatan: json["id_kecamatan"].toString(),
//     );
//   }
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "nama": nama,
//         "username": username,
//         "password_text": password,
//         "email": email,
//         "alamat": alamat,
//         "telepon": telpon,
//         "image": image,
//         "aktif": aktif,
//         "id_provinsi": id_provinsi,
//         "id_kabupaten": id_kabupaten,
//         "id_kecamatan": id_kecamatan,
//       };
// }
