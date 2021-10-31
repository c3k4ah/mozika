import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/widgets/times_bar.dart';
import 'package:mzk/views/widgets/music_bar.dart';

import 'widgets/album_image.dart';
import 'widgets/times_code.dart';
import 'widgets/titre.dart';

/* -------------------------------------------------------------------------- */
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
            elle sera plus centré. CircularAvatar est plutôt pour l'image*/
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
        child: MusicBar(),
      ),
    );
  }
}
