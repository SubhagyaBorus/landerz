import 'package:flutter/material.dart';
import 'package:landerz/Common/Drawer/drawerItem.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          drawerItem(title: "Home", onTap: () {}),
          drawerItem(title: "Features", onTap: () {}),
          drawerItem(title: "About Us", onTap: () {}),
          drawerItem(title: "Testimonials", onTap: () {}),
          drawerItem(title: "Blogs", onTap: () {}),
          drawerItem(title: "Contact", onTap: () {})
        ],
      ),
    );
  }
}
