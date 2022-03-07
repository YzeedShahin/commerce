import 'package:flutter/material.dart';

import 'categoty.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Category(
              image:'assets/images/accessories.png',
              title:'accessories',
              function: (){},
            ),

            Category(
              image: 'assets/images/dress.png',
              title:'dress',
              function: (){},
            ),

            Category(
              image: 'assets/images/formal.png',
              title:'formal',
              function: (){},
            ),

            Category(
              image: 'assets/images/informal.png',
              title:'informal',
              function:(){},
            ),

            Category(
              image: 'assets/images/jeans.png',
              title:'pants',
              function: (){},
            ),

            Category(
              image: 'assets/images/shoe.png',
              title:'shoe',
              function: (){},
            ),

            Category(
              image: 'assets/images/tshirt.png',
              title:'shirt',
              function: (){},
            ),
          ],
        ),
      ),
    );
  }
}
