import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ui_house/src/pages/home_page_animation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIOverlays([]); // PARA ABRIR EM FULLSCREEN
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui House',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePageAnimation(),
    );
  }
}
