import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/widgets/liste_card.dart';

class LecturePage extends StatelessWidget {
  const LecturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(children: [
          Column(
            children: [PhotoALbumCover(), ListePlay()],
          ),
          Positioned(
            top: 0.25 * Get.height,
            left: 0.4 * Get.width,
            //right: 0.5 * width,
            child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 30,
                          offset: Offset(2, 2),
                          spreadRadius: 0.5)
                    ]),
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        Get.toNamed('/search');
                      },
                      icon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.red.shade900,
                      )),
                )),
          ),
        ]));
  }
}

class PhotoALbumCover extends StatelessWidget {
  const PhotoALbumCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: .3 * Get.height,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          ),
          child: Container(
            margin: EdgeInsets.only(top: Get.height * .06),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    )
                  ],
                ),
                Text(
                  'Tsara Joro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
                Text('Amino',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    )),
              ],
            ),
          )),
    );
  }
}

class ListePlay extends StatelessWidget {
  const ListePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Container(
        height: .68 * Get.height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
        ),
        child: ListView.builder(
          itemCount: 15,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return CardListeMusic();
          },
        ),
      ),
    );
  }
}
