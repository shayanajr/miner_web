import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miner_web/Core/Routes/routes.dart';
import 'package:miner_web/Screens/authentication/login_username.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Miner Web',
      getPages: Routes.pages,
      initialRoute: '/',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepOrangeAccent,
      ),
      home: LoginPage(),
    );
  }
}


