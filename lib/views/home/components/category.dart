import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final Image pic;
  final Function function;

  Category({
     required this.title,
     required this.pic,
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
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: pic,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(title, style: const TextStyle(color: Colors.black87),),
              )
          ),
        ),
      ),
    );
  }
}