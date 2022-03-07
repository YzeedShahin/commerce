import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final String image;
  final Function function;

  Category({
     required this.title,
     required this.image,
    required this.function,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child:  InkWell(
        onTap: function(),
        child: SizedBox(
          width: 110.0,
          child: ListTile(
              title: Image.asset(
                image,
                width: 100.0,
                height: 50.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(title),
              )
          ),
        ),
      ),
    );
  }
}