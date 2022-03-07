import 'package:commerce/views/home/components/product.dart';
import 'package:flutter/material.dart';
import 'package:commerce/data/data.dart';

class ProductsList extends StatelessWidget {
  var product_list = products;

  ProductsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Product(
            name: product_list[index]['name'],
            picture: product_list[index]['picture'],
            old_price: product_list[index]['old_price'],
            new_price: product_list[index]['price'],
          ),
        );
      },
    );
  }
}
