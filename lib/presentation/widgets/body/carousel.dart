import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../core/constants/carusel_images/carusel_images.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: CarouselSlider(
      options: CarouselOptions(
        height: 400,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        clipBehavior: Clip.hardEdge,
      ),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.asset(
                  item,
                  width: 400,
                  fit: BoxFit.fill,
                )),
              ))
          .toList(),
    ));
  }
}
