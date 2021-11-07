import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFFFEFEF),
            Color(0xFFE7C7C7),
          ],
        )),
        alignment: Alignment.center,
        // color: Color(0xffeb3446),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.32),
                height: MediaQuery.of(context).size.height * 0.30,
                child: Image.asset('assets/icon/mzk_logo.png')),
            Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.275),
                child: Shimmer.fromColors(
                    baseColor: const Color(0xffeb3446),
                    highlightColor: Color(0xffffffff),
                    period: Duration(seconds: 2),
                    child: Text(
                      "Mozika",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "ProductSans",
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
