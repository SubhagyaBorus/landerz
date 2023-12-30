import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class footerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FooterIcons(FontAwesomeIcons.facebook),
                SizedBox(
                  width: 10,
                ),
                FooterIcons(FontAwesomeIcons.twitter),
                SizedBox(
                  width: 10,
                ),
                FooterIcons(FontAwesomeIcons.instagram),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  horizontal: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? 180
                      : 0),
              height: 40,
              width: 800,
              child:
                  sizingInformation.deviceScreenType == DeviceScreenType.tablet
                      ? Text(
                          "Copyright ©2023 All rights reserved |\nThis template is made By Subhagya",
                          style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w200,
                          ),
                          maxLines: 2,
                        )
                      : sizingInformation.deviceScreenType ==
                              DeviceScreenType.mobile
                          ? Text(
                              "Copyright ©2023 All rights reserved |\nThis template is made By Subhagya",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w200,
                              ),
                              maxLines: 2,
                            )
                          : Text(
                              "Copyright ©2023 All rights reserved | This template is made By Subhagya",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w200,
                              ),
                              maxLines: 2,
                            ),
            )
          ],
        ),
      ),
    );
  }
}

Widget FooterIcons(Icons) {
  return IconButton(
      onPressed: () {},
      icon: FaIcon(
        Icons,
        color: Color.fromRGBO(0, 210, 181, 60),
        size: 18,
      ));
}
