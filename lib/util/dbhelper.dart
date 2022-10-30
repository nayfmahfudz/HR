// import 'dart:async';
// import 'dart:io' as io;
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import '../model/user.dart';


// class DBHelper {
//   static Database _db;
//   Future<Database> get db async {
//     if (_db != null) return _db;
//     _db = await initDb();
//     return _db;
//   }

//   initDb() async {
//     io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, "dorun.db");
//     var theDb = await openDatabase(path, version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade );
//     return theDb;
//   }

//   void onDelete() async {
//     io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, "dorun.db");
//     await deleteDatabase(path);
//   }

//   void _onUpgrade(Database db, int oldVersion, int newVersion) async {
//     await db.execute("DROP TABLE IF EXISTS User");
//     _onCreate(db, newVersion);
//   }

//   void _onCreate(Database db, int version) async {
//     await db.execute(
//         "CREATE TABLE User(no INTEGER PRIMARY KEY, iduser TEXT, namauser TEXT, password TEXT, email TEXT, telepon TEXT, image TEXT, pemilik TEXT)");
//     print("Created tables");
//   }

//   void saveUser(User user) async {
//     var dbClient = await db;
//     await dbClient.transaction((txn) async {
//       return await txn.insert("User", user.toJson());
//     });
//   }

//   void updateUser(User user) async {
//     var dbClient = await db;
//     await dbClient.transaction((txn) async {
//       return await txn.update("User", user.toJson(), where: "no = ?", whereArgs: [1]);
//     });
//   }

//   void deleteUser() async {
//     var dbClient = await db;
//     await dbClient.transaction((txn) async {
//       return await txn.rawDelete(
//           'DELETE FROM User');
//     });
//     print("Delete Tabel User");
//   }

//   Future<List<Map>> fetchUser() async {
//     var dbClient = await db;
//     // List<Map> results = await dbClient.query("User", columns: User.columns, where: "no = ?", whereArgs: [1]);
//     // return results;
//   }

//   Future<int> countUser() async {
//     var dbClient = await db;
//     return Sqflite.firstIntValue(await dbClient.rawQuery('SELECT COUNT(*) FROM User'));
//   }
// }


// var dbHelper = DBHelper();
// Future<int> countUserFromDatabase() async {
//   int user = await dbHelper.countUser();
//   return user;
// }

// Future<User> fetchUserFromDatabase() async {
//   List<Map> users = await dbHelper.fetchUser();
//   List<User> list = users.map((val) =>  User.fromJson(val)).toList();
//   User user=list[0];
//   return user;
// }