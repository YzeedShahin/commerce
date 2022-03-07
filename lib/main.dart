import 'package:commerce/theme.dart';
import 'package:commerce/views/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peace Ya Man',
      theme: theme(),
      home: SplashView(),
    );
  }
}