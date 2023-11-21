import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              
                'https://lottie.host/9897abbc-8709-497d-93e7-545dbd1b9061/tydA6Atox8.json',
                width: 200,
                height: 200,
                fit: BoxFit.cover),
            Text(
              'KinG--CarT',
              style: TextStyle(
                  color: Colors.black.withOpacity(.80),
                  fontSize: 40,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton(
              backgroundColor: Colors.grey.withOpacity(.30),
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
