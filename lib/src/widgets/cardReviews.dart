import 'package:flutter/material.dart';
import 'package:ui_house/src/global/list_urls_imgs.dart';

Container cardReviews({String urlImg}) {
  return Container(
    height: 55,
   // width: 300,
    margin: EdgeInsets.only(bottom: 8),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          backgroundImage: AssetImage(urlImg),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                "Dorivaldo dos Santos",
                style: TextStyle(fontSize: 12, color: Colors.black54, fontFamily: font),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                "\"We can’t connect to the server \nat www.google.com.\"",
                style: TextStyle(fontSize: 8, color: Colors.grey, fontStyle: FontStyle.italic, fontFamily: font),
              ),
            ),
            Row(
              children: List.generate(5, (i) {
                return Icon(
                  Icons.star,
                  size: 15,
                  color: Color(0xffFFE3B1),
                );
              }),
            )
          ],
        )
      ],
    ),
  );
}
