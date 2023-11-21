import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({required this.product, super.key});

  void addTocart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text('Do you want to add this Item to the Cart?'),
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
                  context.read<Shop>().addTocart(product);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 3,
      width: MediaQuery.sizeOf(context).width / 1.2,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 1, color: Colors.black)],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: InkWell(
              onTap: () {},
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: MediaQuery.sizeOf(context).width / 1.4,
                height: MediaQuery.sizeOf(context).height / 2.8,
                child: product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 1.4,
              height: MediaQuery.sizeOf(context).height / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product.description,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.price.toString(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: IconButton(
                              onPressed: () {
                                return addTocart(context);
                              },
                              icon: const Icon(Icons.add)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
