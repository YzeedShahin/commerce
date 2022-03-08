import 'package:flutter/material.dart';

import '../product_details_view.dart';

class Similar_single_prod extends StatelessWidget {
  const Similar_single_prod({
    Key? key,
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_new_price,
  }) : super(key: key);
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductsDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_new_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(
                          prod_new_price,
                          style: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}