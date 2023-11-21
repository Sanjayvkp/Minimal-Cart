import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromcart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text('Do you want to Remove this Item to the Cart?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.read<Shop>().removeFromcart(product);
                },
                child: const Text(
                  'Remove',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Row(
                children: [
                  Text(
                    'Your-Cart',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: cart.isEmpty
                  ? Center(
                      child: Padding(
                      padding: const EdgeInsets.only(bottom: 170),
                      child: Text(
                        'Your Cart is Empty',
                        style: TextStyle(
                            fontSize: 20, color: Colors.black.withOpacity(.30)),
                      ),
                    ))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 90,
                              width: MediaQuery.sizeOf(context).width / 1.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 1, color: Colors.black)
                                  ]),
                              child: ListTile(
                                  leading: SizedBox(
                                    width: 50,
                                    height: 60,
                                    child: item.image,
                                  ),
                                  title: Text(
                                    item.name,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(
                                    item.price.toString(),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {
                                        return removeFromcart(context, item);
                                      },
                                      icon: const Icon(
                                        Icons.remove_circle,
                                        color: Colors.black,
                                        size: 35,
                                      ))),
                            ),
                          ],
                        );
                      },
                    ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 45),
              child: FloatingActionButton.extended(
                  elevation: 1,
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  label: const Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
