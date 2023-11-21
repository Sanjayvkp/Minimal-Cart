import 'package:ecommerce_project/models/shop.dart';
import 'package:ecommerce_project/pages/about_page.dart';
import 'package:ecommerce_project/pages/cart_page.dart';
import 'package:ecommerce_project/pages/intro_page.dart';
import 'package:ecommerce_project/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
         '/about_page': (context) => const AboutPage(),
      },
    );
  }
}
