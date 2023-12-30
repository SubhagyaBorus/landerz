import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:landerz/Screens/Home/FeaturesView/FeaturesItem.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FeaturesView extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {
      "title": "Business Consulting",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    },
    {
      "title": "Market Analysis",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    },
    {
      "title": "User Monitoring",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    },
    {
      "title": "Insurance Consulting",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    },
    {
      "title": "Customer Satistified",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    },
    {
      "title": "Plug & Play",
      "paragraph":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.",
      "icon": Icons.abc
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        height: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? 1020
            : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? 1300
                : 2190,
        color: Color.fromRGBO(246, 246, 246, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 80
                      : 40,
                  bottom: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 80
                      : 40),
              child: const Text(
                "Features",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? MediaQuery.sizeOf(context).width * 1 / 7
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? MediaQuery.sizeOf(context).width * 1 / 11
                            : 20),
                height: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? 800
                    : sizingInformation.deviceScreenType ==
                            DeviceScreenType.tablet
                        ? 1100
                        : 1980,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 300
                        : 350,
                    crossAxisCount: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? 3
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? 2
                            : 1,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: features.length,
                  itemBuilder: (context, index) => FeaturesItem(
                      icon: features[index]['icon'],
                      title: '${features[index]['title']}',
                      paragraph: '${features[index]['paragraph']}'),
                )),
          ],
        ),
      ),
    );
  }
}
