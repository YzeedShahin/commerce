import 'package:commerce/data/data.dart';
import 'package:commerce/views/product_details/components/s_product.dart';
import 'package:flutter/material.dart';

class SProductList extends StatelessWidget {
  var product_list = s_product_list;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_new_price: product_list[index]['price'],
          );
        });
  }
}

