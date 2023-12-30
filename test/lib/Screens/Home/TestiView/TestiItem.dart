import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class testitems extends StatelessWidget {
  final String image;
  final String name;

  testitems({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        width: MediaQuery.sizeOf(context).width * 1 / 1.1,
        margin: EdgeInsets.only(
            left: sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 80
                : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                    ? 110
                    : 50,
            right: sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop
                ? 80
                : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                    ? 100
                    : 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                image,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 800,
              child: Text(
                "“Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.”",
                style: TextStyle(
                    fontSize: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 15
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? 18
                            : 22,
                    letterSpacing: 1.8,
                    height: 1.6,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: sizingInformation.deviceScreenType ==
                            DeviceScreenType.mobile
                        ? 13
                        : sizingInformation.deviceScreenType ==
                                DeviceScreenType.tablet
                            ? 15
                            : 18,
                    letterSpacing: 1.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
