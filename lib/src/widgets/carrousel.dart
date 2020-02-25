import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_house/src/global/list_urls_imgs.dart';

class CarrouselWidget extends StatefulWidget {
  @override
  _CarrouselWidgetState createState() => _CarrouselWidgetState();
}

class _CarrouselWidgetState extends State<CarrouselWidget> {
  int index = 0;
  PageController _controller;
  

  Timer _timer;

  @override
  void initState() {
    _controller = PageController();
    _timer = Timer.periodic(Duration(seconds: 2), (t) {
      print("Angola");
      setState(() {
        if ((index + 1) == urlsImg.length) {
          index = 0;
          _controller.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        } else {
          index++;
          _controller.animateToPage(index,
              duration: Duration(milliseconds: 250), curve: Curves.easeIn);
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2.5,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
        child: Stack(
          children: <Widget>[
            PageView(
                controller: _controller,
                onPageChanged: (i) {
                  setState(() {
                    index = i;
                  });
                },
                children: List.generate(8, (i) {
                  /* ITENS DO CARROUSEL */
                  return Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        image: DecorationImage(
                            image: AssetImage(urlsImg[i]),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.1), BlendMode.darken),
                            fit: BoxFit.cover)),
                  );
                })),

            /* INDICADORES DO CARROUSEL */
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  children: List.generate(8, (i) {
                    return indicadores(i);
                  }),
                ))
          ],
        ),
      ),
    );
  }

  Expanded indicadores(int i) {
    return Expanded(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      height: 4,
                      decoration: BoxDecoration(
                          color: i == index
                              ? Colors.white
                              : Colors.white.withOpacity(.5),
                          borderRadius: BorderRadius.circular(2)),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  );
  }
}
