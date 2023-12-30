import 'package:flutter/material.dart';
import 'package:landerz/Common/Drawer/drawer.dart';
import 'package:landerz/Screens/Home/AboutUsView/AboutUsView.dart';
import 'package:landerz/Screens/Home/BlogsView/BlogsView.dart';
import 'package:landerz/Screens/Home/TestiView/TestiView.dart';
import 'package:landerz/Screens/Home/footerView.dart';
import '../../Common/NavigationBar/NavigationBar.dart';
import 'ContactUsView/ContactUsView.dart';
import 'FeaturesView/FeaturesView.dart';
import 'HomeView/HomeView.dart';
import 'ProjectView/ProjectView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          leadingWidth: 180,
          toolbarHeight: 60,
          leading: Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              child: const Text(
                "Landerz",
                style: TextStyle(
                    fontSize: 30, color: Colors.black87, letterSpacing: 5),
              )),
          actions: [Navigationbar()],
        ),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverToBoxAdapter(
              child: HomeView(),
            ),
            SliverToBoxAdapter(
              child: FeaturesView(),
            ),
            SliverToBoxAdapter(
              child: ProjectView(),
            ),
            SliverToBoxAdapter(
              child: AboutUsView(),
            ),
            SliverToBoxAdapter(
              child: TestiView(),
            ),
            SliverToBoxAdapter(
              child: BlogsView(),
            ),
            SliverToBoxAdapter(
              child: ContactUsView(),
            ),
            SliverToBoxAdapter(
              child: footerView(),
            )
          ],
        ));
  }
}
