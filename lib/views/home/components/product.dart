import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    this.name,
    this.picture,
    this.old_price,
    this.new_price,
  }) : super(key: key);
  final name;
  final picture;
  final old_price;
  final new_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        Text(
                          new_price,
                          style: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
