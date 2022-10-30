// import 'package:flutter/material.dart';


// // class ModelEvent with ChangeNotifier {
// // // ModelEvent(this)


// // } 


// class Stat extends StatefulWidget {
//   @override
//   _StatState createState() => _StatState();
// }

// class _StatState extends State<Stat> {
  
  
//   // @override
//   Widget build(BuildContext context) {
//     final formKey = GlobalKey<FormState>();
// void validateinput() {
//   if (formKey.currentState.validate()) {

//     formKey.currentState.save();
//     Navigator.pushNamed(context,'/Login');
//   } else {

//     setState(() {
//       autoValidate = true;
//     });
//   }
// }
//    bool autoValidate = false;
//   String nama;
//   String email;
//   String pass;
//   String alamat;
//   String nomor;
//   String validemail(String value) {
    
//       Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     if (!regex.hasMatch(value))
//       return 'Enter Valid Email';
//   }
//   String validenama(String value) {
//     if (value.length < 3)
//       return 'Nama Harus diisi minimal 3 kata';
//     else
//       return null;
//   }
//   String validpass(String value) {
//     if (value == null)
//       return 'Password harus diisi';
//     else
//       return null;
//   }
//   String validalamat(String value) {
//     if (value.length > 3)
//       return 'Mohon alamat diisi dengan lengkap';
//     else
//       return null;
//   }
//   String validnomor(String value) {
//     if (value.length > 9)
//       return 'Mohon alamat diisi dengan lengkap';
//     else
//       return null;
//   }
  
    
//     Kelamin kelamin;
//     final teks =Text(
//       "Formulir",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 40),
//     );
//     final email = TextFormField(
//       validator:  validemail,
//       onSaved: (String value){
//         _email = value;
//       },
//       controller: emailinputcontroller,
//       keyboardType: TextInputType.emailAddress,
//       autofocus: false,
//       // initialValue: "Masukan Username atau Email",
//       decoration: InputDecoration(
//         icon: Icon(Icons.email),
//         hintText: 'Email',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//      final nama = TextFormField(
//       controller: emailinputcontroller,
//        validator:  validenama,
//       onSaved: (String value){
//         stat. = value;
//       },
//       autofocus: false,
      
//       decoration: InputDecoration(
//         icon: Icon(Icons.account_box),
//         hintText: 'Nama Lengkap',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final password = TextFormField(
//       controller: passinputcontroller,
//        validator:  validpass,
//        onSaved: (String value){
//         _pass = value;
//       },
//       autofocus: false,
//       obscureText: true,
//       decoration: InputDecoration(
//         icon: Icon(Icons.keyboard_hide),
//         hintText: ' Password',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );
//     final alamat = TextFormField(
//       // controller: emailinputcontroller,
//        validator:  validalamat,
//       onSaved: (String value){
//         _alamat = value;
//       },
      
//       autofocus: false,
//       decoration: InputDecoration(
//         icon: Icon(Icons.home),
//         hintText: 'Alamat ',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final nomor = TextFormField(
//        validator:  validnomor,
//       onSaved: (String value){
//         _nomor = value;
//       },

//       keyboardType: TextInputType.phone,
//       // controller: passinputcontroller,
//       autofocus: false,
//       decoration: InputDecoration(
//         hintText: ' Nomor Telepon',
//         contentPadding: EdgeInsets.all(20),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//         icon: Icon(Icons.phone_android)
//       ),
//     );

//     final loginButton = Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),

//       child: Material(
//         borderRadius: BorderRadius.circular(60.0),
//         shadowColor: Colors.lightBlueAccent,
//         // elevation: 5.0,
//         child: MaterialButton(

//           minWidth: 200.0,
//           height: 42.0,
//           onPressed: 
//           () {
//   //           if (_formKey.currentState.validate()) {

//   //   _formKey.currentState.save();
//   //   Navigator.of(context).pop();
//   // } 
//             _validateinput();
//           //   Navigator.pushNamed(context,'/Login');
//           },
//           color: Colors.lightBlueAccent,
//           child: Text('Sign In', style: TextStyle(color: Colors.white)),
//         ),
//       ),
//     );
//     String dropdownValue ="Pria";
//     // final drop = DropdownButton<String>(
//     //   value: dropdownValue,


//     //   // icon: Icon(Icons.arrow_downward),
//     //   iconSize: 24,
//     //   elevation: 16,
//     //   style: TextStyle(color: Colors.deepPurple),
//     //   // underline: Container(
//     //   //   height: 2,
//     //   //   color: Colors.deepPurpleAccent,
//     //   // ),
//     //   onChanged: (String newValue) {
//     //     setState(() {
//     //       dropdownValue = newValue;
//     //     });
//     //   },
//     //   items: <String>[pria,wanita]
//     //       .map<DropdownMenuItem<String>>((String value) {
//     //     return DropdownMenuItem<String>(
//     //       value: value,
//     //       child: Text(value),
//     //     );
//     //   }).toList(),
//     // );
// //   }
// // }
// String _value;
// final drop = DropdownButton<String>(
  
	
//           items: [
	
//             DropdownMenuItem<String>(
	
//               child: Row(
	
//                   children: <Widget>[
	
//                     Icon(Icons.filter_1),
	
//                     Text('Wanita'),
	
//                   ],
	
//               ),
	
//               value: 'one',
	
//             ),
	
//             DropdownMenuItem<String>(
	
//               child: Row(
	
//                 children: <Widget>[
	
//                   Icon(Icons.filter_2),
	
//                   Text('Pria'),
	
//                 ],
	
//               ),
	
//               value: 'two',
	
//             ),
	
            
	
//           ],
	
//           isExpanded: false,
	
//           onChanged: (String value) {
	
//             setState(() {
	
//               _value = value;
	
//             });
	
//           },
	
//           hint: Text('Pilih jenis kelamin'),
	
//           value: _value,
	
//           // underline: Container(
	
//           //   decoration: const BoxDecoration(
	
//           //       border: Border(bottom: BorderSide(color: Colors.grey))
	
//           //   ),
	
//           // ),
	
//           style: TextStyle(
	
//             fontSize: 30,
	
//             color: Colors.black,
	
//           ),
	
//           // iconEnabledColor: Colors.pink,
	
//   //        iconDisabledColor: Colors.grey,
	
//           iconSize: 40,
	
        
	
//       );

//     int id=0;
//     // String _value;
//     final List<Kelamin> _kelamin=[
//       Kelamin(index: 0,text: 'Pria' ),
//       Kelamin(index: 1,text: 'Wanita' )

//     ];
//   //   return Container(
      
//     // );
//   }
// }

