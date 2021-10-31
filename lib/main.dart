import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mzk/views/lecture_page.dart';
import 'package:mzk/views/settings_page.dart';
import 'package:mzk/views/liste_page.dart';

import 'views/times_bar.dart';
import 'views/widgets/music_bar.dart';

void main() => runApp(MaterialApp(
        //home: MyApp(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => MyApp(),
          '/setting': (context) => SettingPage(),
          '/playList': (context) => PlayListPage(),
        }));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  bool isPlaying = false;
  late Animation animation;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            artisteImage(),
            timesBar(),
            titre(),
            timesCode(),
            Positioned(
              top: 0.05 * Get.height,
              right: 0.81 * Get.width,
              child: MaterialButton(
                shape: CircleBorder(),
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            /*il est préferable d'utiliser MaterialButton si tu veux contenir une icon ,
            elle sera plus centre. CircularAvatar est plutôt pour l'image*/
            Positioned(
              top: 0.05 * Get.height,
              left: 0.81 * Get.width,
              child: MaterialButton(
                shape: CircleBorder(),
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, '/playList');
                },
                child: Icon(
                  Icons.queue_music_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Stack(children: <Widget>[
          MusicBar(),
        ]),
      ),
    );
  }
}
