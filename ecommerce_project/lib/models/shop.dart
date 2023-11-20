import 'package:ecommerce_project/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: 'Premium Sunglass Black',
        description: 'Most Wanted sunglass in the Market',
        price: '\$123',
        image: Image.asset(
          'assets/images/glass.jpg',
          fit: BoxFit.cover,
        )),
    Product(
        name: 'Premium Black Hoodie',
        description: 'Black Hoodie that enhances the weather',
        price: '\$99',
        image: Image.asset(
          'assets/images/hoodie.jpg',
          fit: BoxFit.cover,
        )),
    Product(
        name: 'White casual Sneakers',
        description: 'Casual white sneakers with extra comfort',
        price: '\$100',
        image: Image.asset(
          'assets/images/shoes.jpg',
          fit: BoxFit.cover,
        )),
    Product(
        name: 'Premium Chain Watch Silver',
        description: 'Watch with premium silver chain ',
        price: '\$499',
        image: Image.asset(
          'assets/images/watch.jpg',
          fit: BoxFit.cover,
        )),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addTocart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromcart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
