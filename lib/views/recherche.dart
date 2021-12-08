import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzk/colors.dart';

class Recherche extends StatefulWidget {
  const Recherche({Key? key}) : super(key: key);

  @override
  _RechercheState createState() => _RechercheState();
}

class _RechercheState extends State<Recherche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaire,
      appBar: AppBar(
        backgroundColor: primaire,
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height * .02,
          ),
          //bar de recherche
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 54,
            decoration: BoxDecoration(
              color: secondaire,
              borderRadius: BorderRadius.circular(20),
              /*boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: white,
                ),
              ],*/
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Recherche",
                      hintStyle: TextStyle(
                        color: Colors.red,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //lise des musique rechercher
          Container()
        ],
      ),
    );
  }
}
