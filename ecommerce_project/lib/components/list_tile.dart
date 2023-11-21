import 'package:flutter/material.dart';

class MylistTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const MylistTile(
      {required this.title,
      required this.icon,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.black.withOpacity(.70)),
      ),
      onTap: onTap,
    );
  }
}
