import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:landerz/Screens/Home/TestiView/TestiItem.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestiView extends StatefulWidget {
  @override
  State<TestiView> createState() => _TestiViewState();
}

class _TestiViewState extends State<TestiView> {
  final item = [
    Image.asset("assets/Images/Testi/person1.jpg"),
    Image.asset("assets/Images/Testi/person2.jpg"),
    Image.asset("assets/Images/Testi/person3.jpg"),
    Image.asset("assets/Images/Testi/person4.jpg")
  ];

  final List<Map<String, dynamic>> testitem = [
    {"name": "John Smith", "image": "assets/Images/Testi/person1.jpg"},
    {"name": "Robert Aguilar", "image": "assets/Images/Testi/person2.jpg"},
    {"name": "Roger Spears", "image": "assets/Images/Testi/person3.jpg"},
    {"name": "Kyle McDonald", "image": "assets/Images/Testi/person4.jpg"},
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => SingleChildScrollView(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40, bottom: 10),
                  child: Text("Testimonials",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5)),
                ),
                SizedBox(
                  height: 30,
                ),
                CarouselSlider.builder(
                    itemCount: testitem.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        child: testitems(
                            image: testitem[index]['image'].toString(),
                            name: testitem[index]['name'].toString()),
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 12,
                      autoPlay: true,
                      height: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 450
                          : sizingInformation.deviceScreenType ==
                                  DeviceScreenType.tablet
                              ? 480
                              : 350,
                      onPageChanged: (index, reason) {
                        setState(() {
                          myCurrentIndex = index;
                        });
                      },
                    )),
                AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: testitem.length,
                  effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      activeDotColor: Color.fromRGBO(0, 210, 181, 60)),
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
        ),
      ),
    );
  }
}
