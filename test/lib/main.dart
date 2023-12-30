import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landerz/Screens/Home/HomePage.dart';
import 'package:landerz/config/Routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesClass.home,
      getPages: RoutesClass.routes,
    );
  }
}
