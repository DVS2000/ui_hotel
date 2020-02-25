import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class AnimationWidget {

  AnimationWidget(this.controller, this.context)
    : barHeight =  Tween<double>(begin: 0, end: MediaQuery.of(context).size.height / 2.5).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0, 0.3,
          curve: Curves.easeIn
        )
      )
    ),

    accomodations = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.3, 0.6,
        )
      )
    ),

    cardHouses = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.6, 0.65,
          curve: Curves.easeIn
        )
      )
    ),
    
    reviews = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.65, 0.8,
        )
      )
    ),

    cardReviews = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.8, 0.9),
      )
    ),

    withCardReviews = Tween<double>(begin: 0, end: MediaQuery.of(context).size.width).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0, 0.98, curve: Curves.easeIn)
      )
    );



  final AnimationController controller;
  final Animation<double> barHeight;
  final Animation<double> accomodations;
  final Animation<double> cardHouses;
  final Animation<double> reviews;
  final Animation<double> cardReviews;
  final Animation<double> withCardReviews;
  final BuildContext context;
  
  
}