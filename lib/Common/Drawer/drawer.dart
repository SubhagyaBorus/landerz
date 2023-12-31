import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:landerz/Common/Drawer/drawerItem.dart';

import '../../config/Controller/OnTapController.dart';

class drawer extends StatelessWidget {
  final scroll = Get.put(OnTapController());
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
          drawerItem(
              title: "Home",
              onTap: () {
                scroll.scrollToHome();
              }),
          drawerItem(
              title: "Features",
              onTap: () {
                scroll.scrollToFeatures();
              }),
          drawerItem(
              title: "About Us",
              onTap: () {
                scroll.scrollToAbout();
              }),
          drawerItem(
              title: "Testimonials",
              onTap: () {
                scroll.scrollToTesi();
              }),
          drawerItem(
              title: "Blogs",
              onTap: () {
                scroll.scrollToBlogs();
              }),
          drawerItem(
              title: "Contact",
              onTap: () {
                scroll.scrollToContact();
              })
        ],
      ),
    );
  }
}
