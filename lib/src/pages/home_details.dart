import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_house/src/widgets/btn_navigation.dart';
import 'package:ui_house/src/widgets/card_details.dart';
import 'package:ui_house/src/widgets/carrousel.dart';

class HomeDetails extends StatefulWidget {
  String tag;
  HomeDetails({@required this.tag});
  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /* IMAGEM DE DESTAQUE */
          Hero(tag: widget.tag, child: CarrouselWidget()),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Luxuoso VILLA PARADISCO\nPróximo de Ibiza",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "georgia",
                  ),
                ),
                Container(
                  height: 22,
                  width: 75,
                  decoration: BoxDecoration(
                      color: Color(0xff8ED6FF),
                      borderRadius: BorderRadius.circular(30)),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "12345/Noite",
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontFamily: "georgia"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(8, (i) {
                return cardDetails(index: i);
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 0),
            child: Text(
              "Try again later Check your network connection If you are connected but behind a firewall, check that Firefox has permission to access the Web",
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontFamily: "georgia",
                  color: Colors.black54),
            ),
          )
        ],
      ),
      bottomNavigationBar: btnNavigation(),
    );
  }
}
