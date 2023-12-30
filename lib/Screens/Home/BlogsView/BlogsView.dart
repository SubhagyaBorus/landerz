import 'package:flutter/material.dart';
import 'package:landerz/Screens/Home/BlogsView/BlogsItem.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogsView extends StatelessWidget {
  final List<Map<String, dynamic>> blogsItem = [
    {
      "name": "Ham Brook",
      "image": "assets/Images/BlogsView/1.jpg",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius."
    },
    {
      "name": "James Phelps",
      "image": "assets/Images/BlogsView/2.jpg",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius."
    },
    {
      "name": "James Phelps",
      "image": "assets/Images/BlogsView/3.jpg",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: const EdgeInsets.only(top: 100),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            child: const Text(
              "Blogs",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 1 / 11),
            height: sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop
                ? MediaQuery.sizeOf(context).height * 0.8
                : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                    ? MediaQuery.sizeOf(context).height * 1.7
                    : 1500,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 530
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 580
                          : 490,
                  crossAxisCount: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 3
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 2
                          : 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? 5
                      : 30),
              itemCount: blogsItem.length,
              itemBuilder: (context, index) => Container(
                child: BlogsItem(
                  image: blogsItem[index]['image'].toString(),
                  name: blogsItem[index]['name'].toString(),
                  paragraph: blogsItem[index]['paragraph'].toString(),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
