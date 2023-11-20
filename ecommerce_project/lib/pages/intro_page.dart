import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black.withOpacity(.80),
              size: 75,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Minimal Shop',
              style: TextStyle(
                  color: Colors.black.withOpacity(.80),
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Premium Quality Products',
              style:
                  TextStyle(color: Colors.black.withOpacity(.70), fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              backgroundColor:
                  const Color.fromARGB(255, 215, 215, 215).withOpacity(.50),
              elevation: 0,
              onPressed: () {
                Navigator.pushNamed(context, "/shop_page");
              },
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
