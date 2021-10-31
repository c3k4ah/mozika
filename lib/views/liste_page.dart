import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayListPage extends StatefulWidget {
  @override
  _PlayListPageState createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> playlist = [
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
      "Tsy hitambarako",
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(

            //SizedBox(height: height * 0.05),

            child: Stack(
          children: <Widget>[
            photoCover(),
            Container(
                /*width: double.infinity,
                  height: double.infinity,*/
                margin: EdgeInsets.only(top: 0.35 * Get.height),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 17,
                    );
                  },
                  itemCount: playlist.length,
                  itemBuilder: (context, index) => Container(
                      width: 0.95 * Get.width,
                      height: 114,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomRight:
                                      Radius.circular((Get.width - 100) / 2),
                                  topRight:
                                      Radius.circular((Get.width - 100) / 2),
                                  /*bottomLeft:
                                      Radius.circular((width - 100) / 2),
                                  topLeft: Radius.circular((width - 100) / 2),*/
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.5),
                                      offset: Offset(0, 8),
                                      blurRadius: 3.0)
                                ]),
                          ),
                          Positioned(
                            bottom: 50,
                            left: 0.04 * Get.width,
                            child: Container(
                                child: Text(
                              /*le texte doit être défillant si elle est trop longue */
                              playlist[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            )),
                          ),
                          Positioned(
                              //left: 0.24 * height,
                              right: 0.0 * Get.height,
                              child: Container(
                                width: 0.55 * Get.width,
                                height: 114,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/images/shyn3.jpg'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.only(
                                    bottomRight:
                                        Radius.circular((Get.width - 100) / 2),
                                    topRight:
                                        Radius.circular((Get.width - 100) / 2),
                                    bottomLeft:
                                        Radius.circular((Get.width - 100) / 2),
                                    topLeft:
                                        Radius.circular((Get.width - 100) / 2),
                                  ),
                                ),
                                /*child: MaterialButton(
                                  shape: CircleBorder(),
                                  color: Colors.white,
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.favorite_rounded,
                                    size: 30,
                                    color: Colors.red.shade400,
                                  ),
                                ),*/
                              ))
                        ],
                      )),
                )),
          ],
        )));
  }
}

Widget photoCover() => Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.only(
        bottom: 0.65 * Get.height,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/shyn1.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular((Get.width - 100) / 2),
              bottomLeft: Radius.circular((Get.width - 100) / 2)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 8),
                blurRadius: 5.0),
          ]),
      child: Stack(
        children: [
          Positioned(
            top: 0.05 * Get.height,
            right: 0.81 * Get.width,
            child: RoundButton(
              icon: Icons.arrow_back_ios,
              onTap: () {
                Get.back();
              },
              key: null,
            ),
          ),
          Positioned(
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
          ),
        ],
      ),
    );

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
