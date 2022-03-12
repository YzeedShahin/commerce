import 'package:commerce/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/category_model.dart';
import 'category.dart';

class CategoryList extends StatefulWidget {
  CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  //
  List<CategoryModel> _categories = [];
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getCategories().then((categories) {
      setState(() {
        _categories = categories;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100.0,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: null == _categories ? 0 : _categories.length,
          itemBuilder: (context, index) {
            CategoryModel category = _categories[index];
            return Category(
              pic: Image.network(Services.host+ category.image , width: 100, height: 50,),
              title: category.name,
              function: (){},
            );
          },
        ),
      ),
    );
  }
}
