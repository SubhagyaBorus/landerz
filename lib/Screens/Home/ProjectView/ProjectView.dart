import 'package:flutter/material.dart';
import 'package:landerz/Screens/Home/ProjectView/ProjectDesktopView.dart';
import 'package:landerz/Screens/Home/ProjectView/ProjectViewItem.dart';
import 'package:landerz/Screens/Home/ProjectView/ProjectViewMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ProjectViewTablet.dart';

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => ProjectDesktopView(),
      tablet: (p0) => ProjectViewTablet(),
      mobile: (p0) => ProjectViewMobile(),
    );
  }
}
