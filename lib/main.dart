import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/lecture_page.dart';
import 'package:mzk/views/recherche.dart';
import 'package:mzk/views/settings_page.dart';
import 'package:mzk/views/liste_page.dart';
import 'package:mzk/views/splash.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed('/home');
    });
    return GetMaterialApp(
        theme: ThemeData(primarySwatch: Colors.red, fontFamily: "ProductSans"),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeSreen(),
          '/setting': (context) => Parametrage(),
          '/playList': (context) => LecturePage(),
          '/search': (context) => Recherche(),
        });
  }
}
