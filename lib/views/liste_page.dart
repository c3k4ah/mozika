import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/views/widgets/liste_card.dart';

class LecturePage extends StatelessWidget {
  const LecturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
        body: Stack(children: [
          Column(
            children: [PhotoALbumCover(), ListePlay()],
          ),
          Positioned(
            top: 0.162 * Get.height,
            left: 0.41 * Get.width,
            //right: 0.5 * width,
            child: Container(
                width: 100,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Center(
                  child: Icon(
                    Icons.pause,
                    size: 35,
                    color: Colors.white,
                  ),
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
      height: .2 * Get.height,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        ),
      ),
    );
  }
}

/*Positioned(
            bottom: 0.0 * Get.height,
            left: 0.41 * Get.width,
            //right: 0.5 * width,
            child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular((Get.width - 100) / 2),
                      topRight: Radius.circular((Get.width - 100) / 2),
                    )),
                child: Center(
                  child: MaterialButton(
                    shape: CircleBorder(),
                    color: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_rounded,
                      size: 30,
                      color: Colors.red.shade400,
                    ),
                  ),
                )),
          ),*/

class ListePlay extends StatelessWidget {
  const ListePlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Container(
        height: .6 * Get.height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
        ),
        child: ListView.builder(
          itemCount: 15,
          padding: EdgeInsets.symmetric(
              vertical: Get.height * 0.05, horizontal: Get.width * 0.03),
          itemBuilder: (context, index) {
            return CardListeMusic();
          },
        ),
      ),
    );
  }
}
