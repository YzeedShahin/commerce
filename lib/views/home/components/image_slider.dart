import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
          AssetImage('assets/images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        showIndicator: false,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );
  }
}
