import 'package:flutter/material.dart';

Container btnNavigation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      height: 35,
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xffFFC1C8), borderRadius: BorderRadius.circular(30)),
      child: Text(
        "COMPRAR".toUpperCase(),
        style: TextStyle(color: Colors.white, fontFamily: "georgia"),
      ),
    );
  }