import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/widgets/times_bar.dart';
import 'package:mzk/views/widgets/music_bar.dart';

import 'widgets/album_image.dart';
import 'widgets/times_code.dart';
import 'widgets/titre.dart';

/* -------------------------------------------------------------------------- */
class HomeSreen extends StatefulWidget {
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen>
    with SingleTickerProviderStateMixin {
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
        color: Colors.grey.shade300,
        child: Stack(
          children: <Widget>[
            artisteImage(),
            timesBar(),
            titre(),
            timesCode(),
            Positioned(
              top: 0.1 * Get.height,
              right: 0.83 * Get.width,
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
              top: 0.1 * Get.height,
              left: 0.83 * Get.width,
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
        color: Colors.grey.shade300,
        child: MusicBar(),
      ),
    );
  }
}
