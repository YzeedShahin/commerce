import 'package:flutter/material.dart';

  AppBar HomeAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.1,
      backgroundColor: Colors.red,
      title: const Text('FashApp'),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {}),
        IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {})
      ],
    );
  }
