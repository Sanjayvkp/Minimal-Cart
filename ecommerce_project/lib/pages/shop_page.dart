import 'package:ecommerce_project/components/drawer.dart';
import 'package:ecommerce_project/components/product_tile.dart';
import 'package:ecommerce_project/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart_page');
              },
              icon: const Icon(
                Icons.shopping_cart_checkout,
                color: Colors.black,
                size: 25,
              ))
        ],
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Shopping Page',
          style: TextStyle(
              fontSize: 23,
              color: Colors.black.withOpacity(
                .70,
              )),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Select From These Listed Products',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 1.5,
              child: ListView.builder(
                physics: const PageScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTile(product: product);
                },
              ),
            ),
          ),
          const Text(
            'Swipe Right for More ▶',
            style: TextStyle(fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
