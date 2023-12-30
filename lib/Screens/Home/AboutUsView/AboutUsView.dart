import 'package:flutter/material.dart';
import 'package:landerz/Screens/Home/AboutUsView/AboutUsDesktopView.dart';
import 'package:landerz/Screens/Home/AboutUsView/AboutUsMobileView.dart';
import 'package:landerz/Screens/Home/AboutUsView/AboutUsTabletView.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => AboutUsDesktopView(),
      tablet: (p0) => AboutUsTabletView(),
      mobile: (p0) => AboutUsMobileView(),
    );
  }
}
