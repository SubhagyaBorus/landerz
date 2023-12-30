import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectViewItem extends StatelessWidget {
  final String title;
  final String image;

  const ProjectViewItem({super.key, required this.title, required this.image});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.outer,
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10),
            ]),
        width: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? MediaQuery.sizeOf(context).width * 1 / 3.2
            : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? MediaQuery.sizeOf(context).width * 1 / 1.3
                : MediaQuery.sizeOf(context).width * 1 / 1.21, //450,
        height: sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? 212
            : sizingInformation.deviceScreenType == DeviceScreenType.tablet
                ? 198
                : 217,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      image,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Co-Founder,XYZ Inc.",
                        style: TextStyle(fontSize: 15, letterSpacing: 2),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? 20
                    : 35,
              ),
              Container(
                width: sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop
                    ? 350
                    : sizingInformation.deviceScreenType ==
                            DeviceScreenType.tablet
                        ? 500
                        : 600,
                child: Text(
                  "“Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus vitae ipsa asperiores inventore aperiam iure?”",
                  style: TextStyle(
                      fontSize: sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? 15
                          : 16,
                      color: Colors.grey,
                      letterSpacing: 1.4,
                      height: sizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                          ? 1.5
                          : 1.4,
                      fontStyle: FontStyle.italic),
                ),
              )
            ]),
      ),
    );
  }
}
