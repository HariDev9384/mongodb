import 'package:flutter/material.dart';
import 'package:mongodb/db.dart';
import 'package:mongodb/screens/Login_page.dart';
import 'package:mongo_dart/mongo_dart.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await database.connect();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}