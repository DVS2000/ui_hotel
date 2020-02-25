import 'package:flutter/material.dart';
import 'package:ui_house/src/global/list_urls_imgs.dart';
import 'package:ui_house/src/utils/animation_widget.dart';
import 'package:ui_house/src/widgets/cardHouses.dart';
import 'package:ui_house/src/widgets/cardReviews.dart';

class HomePage extends StatelessWidget {
  
  HomePage({Key key, @required AnimationController controller, @required BuildContext context}) : 
  animationWidget = AnimationWidget(controller, context), super(key: key);

  final AnimationWidget animationWidget;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBuilder(
        animation: animationWidget.controller,
        builder: (context, child) {
          return ListView(
            padding: EdgeInsets.only(top: 0),
            children: <Widget>[
              /* IMAGEM DE DESTAQUE */
              Container(
                height: animationWidget.barHeight.value,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/03.jpeg"), fit: BoxFit.cover)),
              ),

              /* LISTA DE TODOS AS CASA */
              Opacity(
                opacity: animationWidget.accomodations.value,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20.0, bottom: 15.0),
                  child: Text(
                    "Acomodação",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: font),
                  ),
                ),
              ),
              Opacity(
                opacity: animationWidget.cardHouses.value,
                child: Container(
                  height: size.height / 4.8,
                  child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(8, (i) {
                        return cardHouses(
                            urlImg: urlsImg[i],
                            size: size,
                            context: context,
                           index: i
                        );
                      })),
                ),
              ),

              /* REVIEWS */
              Opacity(
                opacity: animationWidget.reviews.value,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20.0, bottom: 0),
                  child: Text(
                    "Avaliações",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: font),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.diagonal3Values(
                  animationWidget.cardReviews.value,
                  animationWidget.cardReviews.value,
                  1.0
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(3, (i) {
                    return Container(
                      width: 10,
                      child: cardReviews(
                          urlImg: (!i.isOdd) ? "assets/07.jpg" : "assets/08.jpg"),
                    );
                  }),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
