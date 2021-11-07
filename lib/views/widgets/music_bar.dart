import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class MusicBar extends StatefulWidget {
  const MusicBar({Key? key}) : super(key: key);

  @override
  _MusicBarState createState() => _MusicBarState();
}

class _MusicBarState extends State<MusicBar>
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
    return Container(
      height: 0.15 * Get.height,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shuffle_outlined,
              size: 34,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.skip_previous_outlined,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 45,
            color: Colors.white,
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
          IconButton(
            icon: Icon(
              Icons.skip_next_outlined,
              size: 35,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.playlist_add_rounded,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
