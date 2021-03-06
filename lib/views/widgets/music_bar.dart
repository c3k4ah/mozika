import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';

class MusicBar extends StatefulWidget {
  const MusicBar({Key key}) : super(key: key);

  @override
  _MusicBarState createState() => _MusicBarState();
}

class _MusicBarState extends State<MusicBar>
    with SingleTickerProviderStateMixin {
  bool isPlaying = false;
   Animation animation;
   AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(microseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.skip_previous_outlined,
              size: 35,
              color: white,
            ),
            onPressed: () {},
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
              icon: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: controller,
              ),
              onPressed: () {
                setState(() {
                  isPlaying = !isPlaying;
                  isPlaying ? controller.forward() : controller.reverse();
                });
              },
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.skip_next_outlined,
              size: 35,
              color: white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.playlist_add_rounded,
              size: 40,
              color: white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
