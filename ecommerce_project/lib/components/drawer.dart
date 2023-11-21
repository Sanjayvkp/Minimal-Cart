import 'package:ecommerce_project/components/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
              child: Lottie.network(
                  // repeat: false,
                  // reverse: false,
                  'https://lottie.host/7aade954-83e2-4301-905f-52c9e3c9e25c/wV1h09kbpz.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover)),
          Text(
            'KingCaRT',
            style: TextStyle(
                fontSize: 37,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
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
              MylistTile(
                  title: 'About',
                  icon: Icons.info_outline,
                  onTap: () {
                    Navigator.pushNamed(context, '/about_page');
                  })
            ],
          ),
          MylistTile(
            title: 'Exit',
            icon: Icons.exit_to_app_rounded,
            onTap: () {
              Hero(tag: 'tag3', child: build(context));
              Navigator.pushNamed(context, '/intro_page');
            },
          ),
        ],
      ),
    );
  }
}
