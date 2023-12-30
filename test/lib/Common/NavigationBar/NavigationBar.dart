import 'package:flutter/material.dart';
import 'package:landerz/Common/NavigationBar/NavigationBarItem.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => Container(
        margin: EdgeInsets.only(right: 180),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(onPressed: () {}, title: "Home"),
            NavigationBarItem(onPressed: () {}, title: "Features"),
            NavigationBarItem(onPressed: () {}, title: "About Us"),
            NavigationBarItem(onPressed: () {}, title: "Testimonials"),
            NavigationBarItem(onPressed: () {}, title: "Blogs"),
            NavigationBarItem(onPressed: () {}, title: "Contact")
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
