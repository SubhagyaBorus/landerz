import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogsItem extends StatelessWidget {
  final String image;
  final String name;
  final String paragraph;

  BlogsItem(
      {super.key,
      required this.image,
      required this.name,
      required this.paragraph});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                image,
                width: MediaQuery.sizeOf(context).width * 0.1 / 0.1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: ScreenTypeLayout.builder(
                  desktop: (p0) => Text(
                    "Create interactive\nprototypes",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.1 / 3.9,
                        height: 1.1,
                        letterSpacing: 2),
                  ),
                  tablet: (p0) => Text(
                    "Create interactive prototypes",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.1 / 2.5,
                        height: 1.1,
                        letterSpacing: 2),
                  ),
                  mobile: (p0) => Text(
                    "Create interactive prototypes",
                    style: TextStyle(
                        fontSize: MediaQuery.sizeOf(context).width * 0.1 / 1.9,
                        height: 1.1,
                        letterSpacing: 2),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? MediaQuery.sizeOf(context).width * 0.1 / 1.2
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? MediaQuery.sizeOf(context).width * 0.1 / 0.9
                          : MediaQuery.sizeOf(context).width * 0.1 / 0.4,
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2, color: Colors.black26),
                  ),
                ),
                SizedBox(
                  width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 0
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? 0
                          : 0,
                ),
                Container(
                  width: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? MediaQuery.sizeOf(context).width * 0.1 / 0.9
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.tablet
                          ? MediaQuery.sizeOf(context).width * 0.1 / 0.5
                          : MediaQuery.sizeOf(context).width * 0.1 / 0.3,
                  child: Text(
                    "•  June 18,2019  •",
                    style: const TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black26,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    "News",
                    style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.5,
                        color: Color.fromRGBO(0, 210, 181, 100)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? 5
                      : 15,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: sizingInformation.deviceScreenType ==
                            DeviceScreenType.desktop
                        ? MediaQuery.sizeOf(context).width * 1 / 3.5
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? MediaQuery.sizeOf(context).width * 1 / 2.5
                            : MediaQuery.sizeOf(context).width * 1 / 1.3,
                    child: Text(
                      paragraph,
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.4,
                        height: 1.3,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? 5
                      : 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Continue Reading...",
                style: TextStyle(
                    color: Color.fromRGBO(0, 210, 181, 100), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
