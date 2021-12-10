import 'dart:io';

import 'package:audio_manager/audio_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';
import 'package:mzk/views/liste_page.dart';
// ignore: unused_import
import 'package:mzk/views/widgets/times_bar.dart';
// ignore: unused_import
import 'package:mzk/views/widgets/music_bar.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

// ignore: unused_import
import 'widgets/album_image.dart';
// ignore: unused_import
import 'widgets/times_code.dart';
// ignore: unused_import
import 'widgets/titre.dart';

double slider;

/* -------------------------------------------------------------------------- */
class HomeSreen extends StatefulWidget {
  final songEcouterActuel;
  final titre;
  final nomActuel;
  final photoAlbum;
  final artiste;

  const HomeSreen(
      {Key key,
      this.songEcouterActuel,
      this.titre,
      this.nomActuel,
      this.photoAlbum,
      this.artiste})
      : super(key: key);
  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    setupAudio();
  }

  ecouterAudionActuelEtArreterAutre() {
    audioManagerInstance
        .start("file://${widget.songEcouterActuel}", widget.titre,
            desc: widget.nomActuel,
            auto: true,
            cover: "assets/images/pochette.png")
        .then((err) {
      print(err);
    });
  }

  arreterAudioActuelEtEcouterSuivant() {
    audioManagerInstance.next();
  }

  arreterAudioActuelEtEcouterPrecedent() {
    audioManagerInstance.previous();
  }

  void setupAudio() {
    audioManagerInstance.onEvents((events, args) {
      switch (events) {
        case AudioManagerEvents.start:
          slider = 0;
          break;
        case AudioManagerEvents.seekComplete:
          slider = audioManagerInstance.position.inMilliseconds /
              audioManagerInstance.duration.inMilliseconds;
          setState(() {});
          break;
        case AudioManagerEvents.playstatus:
          isPlaying = audioManagerInstance.isPlaying;
          setState(() {});
          break;
        case AudioManagerEvents.timeupdate:
          slider = audioManagerInstance.position.inMilliseconds /
              audioManagerInstance.duration.inMilliseconds;
          audioManagerInstance.updateLrc(args["position"].toString());
          setState(() {});
          break;

        default:
          break;
      }
    });
    ecouterAudionActuelEtArreterAutre();
  }

  String _formatDuration(Duration timesCode) {
    if (timesCode == null) return "--:--";
    int minute = timesCode.inMinutes;
    int second = (timesCode.inSeconds > 60)
        ? (timesCode.inSeconds % 60)
        : timesCode.inSeconds;
    String format = ((minute < 10) ? "0$minute" : "$minute") +
        ":" +
        ((second < 10) ? "0$second" : "$second");
    return format;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaire,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(
                left: 50,
                right: 50,
                bottom: 0.15 * Get.height,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.photoAlbum == null
                      ? ExactAssetImage('assets/images/pochette.png')
                      : FileImage(
                          File(widget.photoAlbum),
                        ),
                  /*doit changer en fonction du photo  de l'album
            les primaryWatch doit hériter du même couleur que cette album..sinon l'user peut choisir sa couleur 'color picker'*/
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular((Get.width - 100) / 2),
                  bottomRight: Radius.circular((Get.width - 100) / 2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white38,
                    offset: Offset(0, 20),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: Get.height * .1,
                    ),
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      color: primaire.withOpacity(0.85),
                      child: Center(
                        child: Text(widget.titre,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.black,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                            )),
                      ),
                    ),
                    /*MaterialButton(
shape: CircleBorder(),
color: Colors.white,
onPressed: () {},
child: Icon(
  Icons.favorite_rounded,
  size: 30,
  color: Colors.red.shade400,
),
      )*/
                  ]),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0.09 * Get.height,
                child: SleekCircularSlider(
                  initialValue: 0,
                  min: 0,
                  max: 100,
                  onChange: (value) {
                    setState(() {
                      slider = value;
                    });
                  },
                  /*onChange valeur durant le changement */
                  onChangeEnd: (value) {
                    if (audioManagerInstance.duration != null) {
                      Duration msec = Duration(
                          milliseconds:
                              (audioManagerInstance.duration.inMilliseconds *
                                      value)
                                  .round());
                      audioManagerInstance.seekTo(msec);
                    }
                  },
                  /*onChangeEnd valeur à la fin */
                  onChangeStart: (value) {},
                  /* onChangeStart valeur au début */
                  innerWidget: (value) => Container(),
                  appearance: CircularSliderAppearance(
                      angleRange: 180,
                      /* angleRange dégré de l'angle*/
                      startAngle: 0,
                      /*startAngle orientation, là on en forme U */
                      size: Get.width - 40,
                      customWidths: CustomSliderWidths(
                        progressBarWidth: 8.5,
                        trackWidth: 8.5,
                        handlerSize: 8.0,
                      ),
                      customColors: CustomSliderColors(
                        trackColor: secondaire,
                        /*track prog déjà faut sur la bar de progression*/
                        progressBarColor: red,
                        /*progressBar prog restant sur la bar de progression*/
                        dotColor: secondaire,
                        /*dot(anglais)=point ,c'est le point qui indique la progression*/
                      )),
                )),
            Positioned(
                /* TIMESCODES ICI */
                bottom: 0.03 * Get.height,
                left: 0.43 * Get.width,
                /*right: 0.5 * width,*/
                child: Stack(children: <Widget>[
                  Text(_formatDuration(audioManagerInstance.position),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                ])),
            Positioned(
              top: 0.1 * Get.height,
              right: 0.83 * Get.width,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: secondaire,
                onPressed: () {
                  Get.toNamed('/setting');
                },
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                  color: red,
                ),
              ),
            ),
            /*il est préferable d'utiliser MaterialButton si tu veux contenir une icon ,
            elle sera plus centré. CircularAvatar est plutôt pour l'image*/
            Positioned(
              top: 0.1 * Get.height,
              left: 0.83 * Get.width,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: secondaire,
                onPressed: () {
                  Get.toNamed('/playList');
                },
                child: Icon(
                  Icons.queue_music_outlined,
                  size: 30,
                  color: red,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: primaire,
        child: Container(
          height: 0.13 * Get.height,
          decoration: BoxDecoration(
            color: primaire,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shuffle_outlined,
                  size: 34,
                  color: white,
                ),
                onPressed: () {
                  audioManagerInstance.previous();
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.skip_previous_outlined,
                  size: 35,
                  color: white,
                ),
                onPressed: () {
                  audioManagerInstance.previous();
                },
              ),
              Container(
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.shade800,
                          blurRadius: 30,
                          offset: Offset(2, 2),
                          spreadRadius: 0.5)
                    ]),
                child: IconButton(
                  iconSize: 45,
                  color: Colors.black,
                  icon: audioManagerInstance.isPlaying
                      ? Icon(Icons.pause)
                      : Icon(Icons.play_arrow),
                  onPressed: () {
                    audioManagerInstance.playOrPause();
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.skip_next_outlined,
                  size: 35,
                  color: white,
                ),
                onPressed: () {
                  audioManagerInstance..nextMode();
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.playlist_add_rounded,
                  size: 40,
                  color: white,
                ),
                onPressed: () {
                  audioManagerInstance..nextMode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
