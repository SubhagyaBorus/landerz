import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landerz/Common/NavigationBar/NavigationBarItem.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../config/Controller/OnTapController.dart';

class Navigationbar extends StatelessWidget {
  final scroll = Get.put(OnTapController());
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => Container(
        margin: EdgeInsets.only(right: 180),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToHome();
                },
                title: "Home"),
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToFeatures();
                },
                title: "Features"),
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToAbout();
                },
                title: "About Us"),
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToTesi();
                },
                title: "Testimonials"),
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToBlogs();
                },
                title: "Blogs"),
            NavigationBarItem(
                onPressed: () {
                  scroll.scrollToContact();
                },
                title: "Contact")
          ],
        ),
      ),
      tablet: (p0) => Container(
          margin: EdgeInsets.only(right: 100),
          child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 30,
              ))),
      mobile: (p0) => Container(
          margin: EdgeInsets.only(right: 50),
          child: IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 30,
              ))),
    );
  }
}
