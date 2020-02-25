import 'package:flutter/material.dart';
import 'package:ui_house/src/global/list_urls_imgs.dart';
import 'package:ui_house/src/pages/home_details.dart';

Container cardHouses({String urlImg, Size size, BuildContext context, int index}) {
  return Container(
    margin: EdgeInsets.only(left: 10),
    height: size.height / 5,
    width: size.width / 3.5,
    color: Colors.white,
    child: FlatButton(
      padding: EdgeInsets.zero,
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomeDetails(tag: index.toString(),))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: index.toString(),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage(urlImg), fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              "Villa Paradisco",
              style: TextStyle(fontSize: 11, color: Colors.black54, fontFamily: font),
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
      ),
    ),
  );
}
