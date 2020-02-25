import 'package:flutter/material.dart';
import 'package:ui_house/src/pages/home.dart';

class HomePageAnimation extends StatefulWidget {
  @override
  _HomePageAnimationState createState() => _HomePageAnimationState();
}

class _HomePageAnimationState extends State<HomePageAnimation> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(
        seconds: 3
      ),
      vsync: this
    );


    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return HomePage(
      controller: _controller,
      context: context,
    );
  }
}