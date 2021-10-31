import 'package:flutter/material.dart';
import 'package:mzk/views/lecture_page.dart';
import 'package:mzk/views/settings_page.dart';
import 'package:mzk/views/liste_page.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => MyApp(),
          '/setting': (context) => SettingPage(),
          '/playList': (context) => PlayListPage(),
        }));
