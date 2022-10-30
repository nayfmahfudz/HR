// import 'package:dio/dio.dart';
// import 'constant.dart';
// import 'dart:async'show Future;


// //POST
// Future deletefeed(String id)async{
//   Map<String,dynamic> maps = {
//     "id":"$id",
//   };
//   final Response response = await Dio().post(urldasar+"home/deletefeed?X-API-KEY=doran_data", data: FormData.fromMap(maps), options: Options(
//       method: 'POST',
//       responseType: ResponseType.json
//   ));
//   var data=response.data;
//   return data;
// }

// Future deletekategori(String id)async{
//   Map<String,dynamic> maps = {
//     "id":"$id",
//   };
//   final Response response = await Dio().post(urldasar+"listproduk/deletekategori?X-API-KEY=doran_data", data: FormData.fromMap(maps), options: Options(
//       method: 'POST',
//       responseType: ResponseType.json
//   ));
//   var data=response.data;
//   return data;
// }

// Future deleteproduk(String id)async{
//   Map<String,dynamic> maps = {
//     "id":"$id",
//   };
//   final Response response = await Dio().post(urldasar+"listproduk/deleteproduk?X-API-KEY=doran_data", data: FormData.fromMap(maps), options: Options(
//       method: 'POST',
//       responseType: ResponseType.json
//   ));
//   var data=response.data;
//   return data;
// }

// Future deletecabang(String id)async{
//   Map<String,dynamic> maps = {
//     "id":"$id",
//   };
//   final Response response = await Dio().post(urldasar+"cabang/deletecabang?X-API-KEY=doran_data", data: FormData.fromMap(maps), options: Options(
//       method: 'POST',
//       responseType: ResponseType.json
//   ));
//   var data=response.data;
//   return data;
// }



// //GET
// Future fetchPemilik() async {
//   final Response response = await Dio().get(urldasar +'user/getuser?X-API-KEY=doran_data&kode_apk=$kode_apk');
//   var data= response.data;
//   return data;
// }

// Future fetchHighlights() async {
//   final Response response = await Dio().get(urldasar +'home/gethighlight?X-API-KEY=doran_data&kode_apk=$kode_apk');
//   var data= response.data;
//   return data;
// }

// Future fetchfeed() async {
//   final Response response = await Dio().get(urldasar +'home/getfeed?X-API-KEY=doran_data&kode_apk=$kode_apk');
//   var data= response.data;
//   return data;
// }

// Future fetchProduks(String idcabang) async {
//   final Response response = await Dio().get(urldasar +'listproduk/getprodukv2?X-API-KEY=doran_data&kode_apk=$kode_apk&cabang=$idcabang');
//   var data= response.data;
//   return data;
// }

// Future fetchProfile(String id,String pemilik) async {
//   final Response response = await Dio().get(urldasar +'pelanggan/getprofile?X-API-KEY=doran_data&kode_apk=$kode_apk&id=$id&pemilik=$pemilik');
//   var data= response.data;
//   return data;
// }

// Future fetchPencarianGlobal(String cari) async {
//   final Response response = await Dio().get(urldasar +'cari?X-API-KEY=doran_data&kode_apk=$kode_apk&cari=$cari');
//   var data= response.data;
//   return data;
// }



