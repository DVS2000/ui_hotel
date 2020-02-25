import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_house/src/global/list_urls_imgs.dart';

Container cardDetails({int index}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    height: 120,
    width: 110,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(.3),
            style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          (!index.isOdd) ? CupertinoIcons.eye : CupertinoIcons.folder,
          size: 60,
          color: Colors.black54,
        ),
        Text(
          (!index.isOdd) ? "3" : "2",
          style: TextStyle(color: Colors.black54, fontFamily: font),
        ),
        Text(
          (!index.isOdd) ? "Quartos" : "W/C",
          style: TextStyle(color: Colors.black54, fontFamily: font),
        )
      ],
    ),
  );
}
