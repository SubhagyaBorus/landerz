import 'package:flutter/material.dart';
import 'package:landerz/Screens/Home/HomeView/HomeDesktopView.dart';
import 'package:landerz/Screens/Home/HomeView/HomeMobileView.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'HomeTabletView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => HomeDesktopView(),
      tablet: (p0) => HomeTabletView(),
      mobile: (p0) => HomeMobileView(),
    );
  }
}
