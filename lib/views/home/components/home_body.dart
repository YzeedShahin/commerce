import 'package:commerce/views/home/components/products_list.dart';
import 'package:flutter/material.dart';

import 'category_list.dart';
import 'image_slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageSlider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,10,10,0),
          child: Container(
              alignment: Alignment.centerLeft,
              child: const Text('Categories')),
        ),
        CategoryList(),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,10),
          child: Container(
              alignment: Alignment.centerLeft,
              child: const Text('Recent products')),
        ),
        Flexible(child: ProductsList()),
      ],
    );
  }
}
