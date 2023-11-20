import 'package:ecommerce_project/components/list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const DrawerHeader(
              child: Icon(
            Icons.shopping_bag_sharp,
            size: 70,
            color: Colors.black,
          )),
          Column(
            children: [
              MylistTile(
                title: 'Shop',
                icon: Icons.shopify_rounded,
                onTap: () {
                  Hero(tag: 'tag1', child: build(context));
                  Navigator.pop(context);
                },
              ),
              MylistTile(
                title: 'My Cart',
                icon: Icons.shopping_cart_outlined,
                onTap: () {
                  Hero(tag: 'tag2', child: build(context));
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: MylistTile(
              title: 'Exit',
              icon: Icons.exit_to_app_rounded,
              onTap: () {
                Hero(tag: 'tag3', child: build(context));
                Navigator.pushNamed(context, '/intro_page');
              },
            ),
          ),
        ],
      ),
    );
  }
}
