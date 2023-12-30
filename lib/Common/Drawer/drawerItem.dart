import 'package:flutter/material.dart';

class drawerItem extends StatelessWidget {
  final String title;
  void Function()? onTap;

  drawerItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: TextStyle(fontSize: 20, letterSpacing: 3),
          )),
    );
  }
}
