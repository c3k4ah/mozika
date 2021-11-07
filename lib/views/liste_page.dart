import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LecturePage extends StatelessWidget {
  const LecturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [PhotoALbumCover(), ListePlay()],
        ));
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  final onTap;
  const RoundButton({required Key? key, required this.icon, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white30,
      ),
      padding: EdgeInsets.all(5.0),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: onTap,
      ),
      height: 50,
      width: 50,
    );
  }
}

class PhotoALbumCover extends StatelessWidget {
  const PhotoALbumCover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: .2 * Get.height,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          /*image: DecorationImage(
              image: AssetImage('assets/images/shyn1.jpg'), fit: BoxFit.cover),*/
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
          /*boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 8),
                  blurRadius: 5.0),
            ]*/
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
      color: Colors.black,
      child: Container(
        height: .55 * Get.height,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
        ),
      ),
    );
  }
}
